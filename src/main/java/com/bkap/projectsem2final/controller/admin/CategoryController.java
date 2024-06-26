package com.bkap.projectsem2final.controller.admin;

import com.bkap.projectsem2final.entities.Category;
import com.bkap.projectsem2final.service.CategoryService;
import com.bkap.projectsem2final.service.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("admin/category")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;
    private final ProductService productService;


    @GetMapping("/list")
    public String category(Model model) {
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("page", "category/list");
        return "admin";
    }

    @GetMapping("/add")
    public String addCategory(Model model) {
        model.addAttribute("category", new Category());
        model.addAttribute("page", "category/add");
        return "admin";
    }


    @PostMapping("/save")
    public String save(@Valid @ModelAttribute Category category, BindingResult result,
                       @RequestParam("file") MultipartFile file, Model model,
                       HttpServletRequest request) {

        //upload 1 ảnh
        if (result.hasErrors()) {
            model.addAttribute("page", "category/add");
            model.addAttribute("category", category);
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
                category.setImage(file.getOriginalFilename());
                categoryService.save(category);
            }
            return "redirect:/admin/category/list";
        }
    }

    @GetMapping("/edit/{id}")
    public String editCate(Model model, @PathVariable int id) {
        model.addAttribute("category", categoryService.findById(id));
        model.addAttribute("page", "category/edit");
        return "admin";
    }

    @PostMapping("update")
    public String updateCate(@Valid @ModelAttribute Category category, BindingResult result, Model model,
                             @RequestParam(value="file", required = false) MultipartFile file,
                             HttpServletRequest req) {
        if (result.hasErrors()) {
            model.addAttribute("page", "category/edit");
            model.addAttribute("category", category);
            return "admin";
        }else{
            if(file != null && !file.isEmpty()) {
                //neu tải têp mới
                String uploadRootPath = req.getServletContext().getRealPath("resources/images");
                File f = new File(uploadRootPath + "/" + file.getOriginalFilename());

                try {
                    //Lưu ảnh tệp mới
                    File destination = new File(f.getAbsolutePath() + "/" + file.getOriginalFilename());
                    file.transferTo(destination);
                    //Cập nhật đường dẫn ảnh mới vào category
                    category.setImage(file.getOriginalFilename());
                } catch (Exception e) {
                    model.addAttribute("error", e.getMessage());
                    model.addAttribute("category", category);
                    model.addAttribute("page", "category/edit");
                    return "admin";
                }
            } else {
                var categoryOld = categoryService.findById(category.getId());
                category.setImage(categoryOld.getImage());
            }
            categoryService.update(category);
            return "redirect:/admin/category/list";
        }
    }

    @GetMapping("delete/{id}")
    public String deleteCate(@PathVariable("id") int id, Model model) {
        if( !productService.findByCategory(id).isEmpty()) {
            model.addAttribute("msg", "Category cannot be removed when product is present");
            model.addAttribute("categories", categoryService.findAll());
            model.addAttribute("page", "category/list");
            return"admin";
        }else {
            categoryService.delete(id);
            return "redirect:/admin/category/list";
        }

    }
}
