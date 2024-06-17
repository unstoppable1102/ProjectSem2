package com.bkap.projectsem2final.controller.admin;

import com.bkap.projectsem2final.entities.Category;
import com.bkap.projectsem2final.entities.PostCategory;
import com.bkap.projectsem2final.service.CategoryService;
import com.bkap.projectsem2final.service.PostCategoryService;
import com.bkap.projectsem2final.service.PostService;
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
@RequestMapping("admin/postcategory")
@RequiredArgsConstructor
public class PostCategoryController {

    private final PostCategoryService postCategoryService;

    private  final PostService postService;


    @GetMapping("/list")
    public String postCategory(Model model) {
        model.addAttribute("postcategories", postCategoryService.findAll());
        model.addAttribute("page", "postcategory/list");
        return "admin";
    }

    @GetMapping("/add")
    public String addPostCategory(Model model) {
        model.addAttribute("postcategory", new PostCategory());
        model.addAttribute("page", "postcategory/add");
        return "admin";
    }


    @PostMapping("/save")
    public String save(@Valid @ModelAttribute("postcategory") PostCategory postCategory,BindingResult result,
                       @RequestParam("file") MultipartFile file, Model model,
                       HttpServletRequest request ) {

        //upload 1 ảnh
        if (result.hasErrors()) {
            model.addAttribute("postcategory", postCategory);
            model.addAttribute("page", "postcategory/add");
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
                postCategory.setImage(file.getOriginalFilename());
                postCategoryService.save(postCategory);
            }else {
                model.addAttribute("page", "postcategory/add");
                model.addAttribute("postcategory", postCategory);
                model.addAttribute("error", "Image post required");
                return "admin";
            }
            return "redirect:/admin/postcategory/list";
        }
    }

    @GetMapping("/edit/{id}")
    public String editPostCate(Model model, @PathVariable int id) {
        model.addAttribute("postcategory", postCategoryService.findById(id));
        model.addAttribute("page", "postcategory/edit");
        return "admin";
    }

    @PostMapping("update")
    public String updateCate(@Valid @ModelAttribute("postcategory") PostCategory postCategory,BindingResult result, Model model,
                             @RequestParam(value="file", required = false) MultipartFile file,
                             HttpServletRequest req
                             ) {

        if(result.hasErrors()){
            PostCategory pcs = postCategoryService.findById(postCategory.getId());
            postCategory.setImage(pcs.getImage());
            model.addAttribute("postcategory", postCategory);
            model.addAttribute("page", "postcategory/edit");
            return "admin";
        }

        if(file != null && !file.isEmpty()) {
            //neu tải têp mới
            String uploadRootPath = req.getServletContext().getRealPath("resources/images");
            File f = new File(uploadRootPath);

            try {
                //Lưu ảnh tệp mới
                File destination = new File(f.getAbsolutePath() + "/" + file.getOriginalFilename());
                file.transferTo(destination);
                //Cập nhật đường dẫn ảnh mới vào category
                postCategory.setImage(file.getOriginalFilename());
            } catch (Exception e) {
                model.addAttribute("error", e.getMessage());
                model.addAttribute("postcategory", postCategory);
                model.addAttribute("page", "postcategory/edit");
                return "admin";
            }
        } else {
            var categoryOld = postCategoryService.findById(postCategory.getId());
            postCategory.setImage(categoryOld.getImage());
        }
        postCategoryService.update(postCategory);
        return "redirect:/admin/postcategory/list";
    }

    @GetMapping("delete/{id}")
    public String deleteCate(@PathVariable("id") int id, Model model) {
        if( !postService.findByCategory(id).isEmpty()) {
            model.addAttribute("msg", "Không thể xoá danh mục khi có bai viet");
            model.addAttribute("postcategories", postCategoryService.findAll());
            model.addAttribute("page", "postcategory/list");
            return"admin";
        }else {
            postCategoryService.delete(id);
            return "redirect:/admin/postcategory/list";
        }
    }
}
