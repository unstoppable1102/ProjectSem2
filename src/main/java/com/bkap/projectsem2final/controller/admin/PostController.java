package com.bkap.projectsem2final.controller.admin;

import com.bkap.projectsem2final.entities.Post;
import com.bkap.projectsem2final.service.PostCategoryService;
import com.bkap.projectsem2final.service.PostService;
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

@Controller
@RequestMapping("admin/post")
@RequiredArgsConstructor
public class PostController {

    private final PostService postService;
    private final PostCategoryService postCategoryService;


    @GetMapping("list")
    public String list(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "6") int size,
            Model model) {
        Page<Post> posts = postService.findAll(page, size);


        model.addAttribute("page", "post/list");
        model.addAttribute("posts", posts);
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("postCategory", postCategoryService.findAll());
        return "admin";

    }

    @GetMapping("add")
    public String add(Model model) {
        model.addAttribute("post", new Post());
        model.addAttribute("postcategory", postCategoryService.findAll());
        model.addAttribute("page", "post/add");
        return "admin";
    }

    @PostMapping("/save")
    public String save(@Valid @ModelAttribute("post") Post post, BindingResult result,
                       @RequestParam("file") MultipartFile file, Model model,
                       HttpServletRequest request) {

        //upload 1 ảnh
        if (result.hasErrors()) {
            model.addAttribute("page", "post/add");
            model.addAttribute("post", post);
            model.addAttribute("postcategory", postCategoryService.findAll());
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
                post.setImage(file.getOriginalFilename());

                postService.save(post);
            }else {
                model.addAttribute("page", "post/add");
                model.addAttribute("post", post);
                model.addAttribute("postcategory", postCategoryService.findAll());
                model.addAttribute("error", "Image post required");
                return "admin";
            }
            return "redirect:/admin/post/list";
        }
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("post", postService.findById(id));
        model.addAttribute("postcategory", postCategoryService.findAll());
        model.addAttribute("page", "post/edit");
        return "admin";
    }

    @PostMapping("update")
    public String updatePost(@Valid @ModelAttribute Post post, BindingResult result,Model model
                            ,@RequestParam("file") MultipartFile file,
                            HttpServletRequest req) {
        if (result.hasErrors()) {
            Post ps1 = postService.findById(post.getId());
            System.out.println("Vao day roi" + result.getFieldErrorCount() + " name field " + result.getFieldError());
            post.setImage(ps1.getImage());
            model.addAttribute("post", post);
            model.addAttribute("postcategory", postCategoryService.findAll());
            model.addAttribute("page", "post/edit");
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
                    post.setImage(file.getOriginalFilename());
                }catch (Exception e) {
                    model.addAttribute("error", e.getMessage());
                    model.addAttribute("post", post);
                    model.addAttribute("page", "post/edit");
                    return "admin";
                }
            }else{
                var postOld = postService.findById(post.getId());
                post.setImage(postOld.getImage());
            }

            postService.update(post);
            return "redirect:/admin/post/list";
        }
    }

    @GetMapping("delete/{id}")
    public String deleteProduct(@PathVariable Integer id) {
        postService.delete(id);
        return "redirect:/admin/post/list";
    }
}
