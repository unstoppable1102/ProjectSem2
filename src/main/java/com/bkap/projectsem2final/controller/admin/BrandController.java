package com.bkap.projectsem2final.controller.admin;

import com.bkap.projectsem2final.entities.Brand;
import com.bkap.projectsem2final.service.BrandService;
import com.bkap.projectsem2final.service.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("admin/brand")
@RequiredArgsConstructor
public class BrandController {

    private final BrandService brandService;
    private final ProductService productService;

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("brands", brandService.findAll());
        model.addAttribute("page", "brand/list");
        return "admin";

    }

    @GetMapping("add")
    public String addBrand(Model model) {
        model.addAttribute("brand", new Brand());
        model.addAttribute("page", "brand/add");
        return "admin";
    }

    @PostMapping("save")
    public String save(@ModelAttribute Brand brand , Model model,
                       @RequestParam("file") MultipartFile file, HttpServletRequest request) {
        //upload 1 ảnh
        if (file != null && !file.isEmpty()) {
            String uploadRootPath = request.getServletContext().getRealPath("resources/images");
            File f = new File(uploadRootPath);

            File destination = new File(f.getAbsolutePath() + "/"+ file.getOriginalFilename());
            try {
                file.transferTo(destination);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            brand.setImage(file.getOriginalFilename());
            brandService.save(brand);
        }
        return "redirect:/admin/brand/list";
    }

    @GetMapping("edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("brand", brandService.findById(id));
        model.addAttribute("page", "brand/edit");
        return "admin";
    }

    @PostMapping("update")
    public String update(@ModelAttribute Brand brand, Model model,
                         @RequestParam("file") MultipartFile file, HttpServletRequest request) {
        //nếu tải ảnh mới
        if (file != null && !file.isEmpty()) {
            String uploadRootPath = request.getServletContext().getRealPath("resources/images");
            String imagePath = uploadRootPath + "/"+ file.getOriginalFilename();

            try {
                File destination = new File(imagePath);
                file.transferTo(destination);
                brand.setImage(file.getOriginalFilename());
            } catch (IOException e) {
                model.addAttribute("error", e.getMessage());
                model.addAttribute("brand", brand);
                model.addAttribute("page", "brand/edit");
                return "admin";
            }
        }else {
            var brandOld = brandService.findById(brand.getId());
            brand.setImage(brandOld.getImage());
        }
        brandService.update(brand);
        return "redirect:/admin/brand/list";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable int id, Model model) {
        if( productService.findByBrand(id) != null) {
            model.addAttribute("msg", "Không thể xoá nhãn khi có sản phẩm");
            model.addAttribute("brands", brandService.findAll());
            model.addAttribute("page", "brand/list");
            return"admin";
        }else {
            brandService.delete(id);
            return "redirect:/admin/brand/list";
        }
    }

}
