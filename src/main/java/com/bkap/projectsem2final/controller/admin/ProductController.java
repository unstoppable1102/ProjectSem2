package com.bkap.projectsem2final.controller.admin;

import com.bkap.projectsem2final.entities.Product;
import com.bkap.projectsem2final.service.BrandService;
import com.bkap.projectsem2final.service.CategoryService;
import com.bkap.projectsem2final.service.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller(value = "ProductOfAdmin")
@RequestMapping("admin/product")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;
    private final CategoryService categoryService;
    private final BrandService brandService;



    @GetMapping("list")
    public String list(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "7") int size,
            Model model) {
        Page<Product> products = productService.findAll(page, size);

        model.addAttribute("page", "product/list");
        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("category", categoryService.findAll());
        return "admin";

    }

    @GetMapping("add")
    public String add(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("category", categoryService.findAll());
        model.addAttribute("brand", brandService.findAll());
        model.addAttribute("page", "product/add");
        return "admin";
    }

    @PostMapping("/save")
    public String save(@Valid @ModelAttribute Product product, BindingResult result,
                       @RequestParam("file") MultipartFile file, Model model,
                       HttpServletRequest request ) {

        //upload 1 ảnh
        if (result.hasErrors()) {
            model.addAttribute("page", "product/add");
            model.addAttribute("product", product);
            model.addAttribute("category", categoryService.findAll());
            model.addAttribute("brand", brandService.findAll());
            return "admin";
        } else {
            if (file != null && !file.isEmpty()) {
                String uploadRootPath = request.getServletContext().getRealPath("resources/images");
                File f = new File(uploadRootPath);
                File destination = new File(f.getAbsolutePath() + "/" + file.getOriginalFilename());

                try {
                    file.transferTo(destination);
                } catch (IllegalStateException | IOException e) {
                    throw new RuntimeException(e);
                }
                product.setImage(file.getOriginalFilename());
                productService.save(product);
            }
            return "redirect:/admin/product/list";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("product", productService.findById(id));
        model.addAttribute("category", categoryService.findAll());
        model.addAttribute("brand", brandService.findAll());
        model.addAttribute("page", "product/edit");
        return "admin";
    }

    @PostMapping("update")
    public String updatePro(@Valid @ModelAttribute Product product, BindingResult result, Model model,
                             @RequestParam("file") MultipartFile file,
                             HttpServletRequest req) {
        if (result.hasErrors()) {
            model.addAttribute("product", product);
            model.addAttribute("category", categoryService.findAll());
            model.addAttribute("brand", brandService.findAll());
            model.addAttribute("page", "product/edit");
            return "admin";
        }else {
            if(file != null && !file.isEmpty()) {
                //neu tải têp mới
                String uploadRootPath = req.getServletContext().getRealPath("resources/images");
                File f = new File(uploadRootPath );
                File destination = new File(f.getAbsolutePath() + "/" + file.getOriginalFilename());
                try {
                    //Lưu ảnh tệp mới
                    file.transferTo(destination);

                    //Cập nhật đường dẫn ảnh mới vào category
                    product.setImage(file.getOriginalFilename());
                }catch (Exception e) {
                    model.addAttribute("error", e.getMessage());
                    model.addAttribute("product", product);
                    model.addAttribute("page", "product/edit");
                    return "admin";
                }
            }else{
                var productOld = productService.findById(product.getId());
                product.setImage(productOld.getImage());
            }
            var productOld = productService.findById(product.getId());
            product.setCreateDate(productOld.getCreateDate());
            productService.update(product);
            return "redirect:/admin/product/list";
        }
    }

    @GetMapping("delete/{id}")
    public String deleteProduct(@PathVariable Integer id) {
        productService.delete(id);
        return "redirect:/admin/product/list";
    }
}

