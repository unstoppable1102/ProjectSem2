package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.CartItem;
import com.bkap.projectsem2final.entities.Category;
import com.bkap.projectsem2final.entities.Product;
import com.bkap.projectsem2final.entities.Wishlist;
import com.bkap.projectsem2final.service.BrandService;
import com.bkap.projectsem2final.service.CartService;
import com.bkap.projectsem2final.service.CategoryService;
import com.bkap.projectsem2final.service.ProductService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller(value = "ProductOfHome")
@RequestMapping("product")
@RequiredArgsConstructor
@SessionAttributes("userId")
public class ProductController {

    private final ProductService productService;
    private final CategoryService categoryService;
    private final BrandService brandService;
    private final CartService cartService;

    @ModelAttribute("totalPrice")
    public Double getTotalPrice(HttpServletRequest req) {
        Integer id = (Integer) req.getSession().getAttribute("userId");
        if (id == null) return 0.0;
        return cartService.calculateTotalPrice(id);
    }

    @ModelAttribute("countCartItem")
    public Integer getCountCartItem(HttpServletRequest req) {
        Integer id = (Integer) req.getSession().getAttribute("userId");
        if (id == null) {
            return null;
        }
        return cartService.countItemsInCart(id);
    }

    @GetMapping
    public String products(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "8") int size,
            @RequestParam(defaultValue = "default", required = false) String sort,
            Model model) {

        Sort sorting = Sort.unsorted();

        switch (sort) {
            case "name_asc":
                sorting = Sort.by("productName").ascending();
                break;
            case "name_desc":
                sorting = Sort.by("productName").descending();
                break;
            case "price_asc":
                sorting = Sort.by("price").ascending();
                break;
            case "price_desc":
                sorting = Sort.by("price").descending();
                break;
        }

        Page<Product> productPage = productService.findAll(page, size, sorting);

        // Add list product into model to display on JSP file
        model.addAttribute("products", productPage);
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        model.addAttribute("wishlist" , new Wishlist());
        model.addAttribute("cartItem", new CartItem());
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("sort", sort);
        model.addAttribute("page", "product/list");
        return "home";
    }

    @GetMapping("search")
    public String search(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "8") int size,
            @RequestParam(defaultValue = "") String keyword, Model model){

        //Paginate
        Pageable pageable = PageRequest.of(page, size);

        //search and paginate
        Page<Product> productPage = productService.search(keyword, pageable);

        model.addAttribute("products", productPage);
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("totalPages", productPage.getTotalPages());
        model.addAttribute("totalItems", productPage.getTotalElements());
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", "product/search");
        return "home";
    }

    @GetMapping("searchPrice")
    public String searchPrice(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "8") int size,
            @RequestParam(defaultValue = "") double min,
            @RequestParam(defaultValue = "") double max,
            Model model){

        //Phân trang
        Pageable pageable = PageRequest.of(page, size);

        //search and paginate
        Page<Product> productPage = productService.search(min, max, pageable);

        model.addAttribute("products", productPage);
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("min", min);
        model.addAttribute("max", max);
        model.addAttribute("totalPages", productPage.getTotalPages());
        model.addAttribute("totalItems", productPage.getTotalElements());
        model.addAttribute("page", "product/searchPrice");
        return "home";
    }

    @GetMapping("detail/{id}")
    public String detail(Model model, @PathVariable Integer id) {
        Product product = productService.findById(id);
        model.addAttribute("product", product);
        if (product != null && product.getCategory() != null) {
            Category category = product.getCategory();
            List<Product> productInSameCategoryId = productService.findProductsByCategoryIdExcludingProductId(category.getId(), id);
            model.addAttribute("productInSameCategoryId", productInSameCategoryId);
        }
        model.addAttribute("wishlist" , new Wishlist());
        model.addAttribute("page", "product/detail");
        return "home";
    }

    @GetMapping("categories/{categoryId}")
    public String productCategory(Model model, @PathVariable Integer categoryId) {
        model.addAttribute("proCategory", productService.findProductsByCategoryId(categoryId));
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        model.addAttribute("page", "product/category");
        return "home";
    }

    @GetMapping("brands/{brandId}")
    public String productBrand(Model model, @PathVariable Integer brandId) {
        model.addAttribute("proBrand", productService.findProductsByBrandId(brandId));
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        model.addAttribute("page", "product/brand");
        return "home";
    }


    @GetMapping("/{id}")
    @ResponseBody
    public Product getProduct(@PathVariable Integer id) {
        return productService.findById(id);
    }
}
