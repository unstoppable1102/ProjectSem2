package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.*;
import com.bkap.projectsem2final.repository.CommentRepository;
import com.bkap.projectsem2final.repository.PostRepository;
import com.bkap.projectsem2final.service.AccountService;
import com.bkap.projectsem2final.service.CartService;
import com.bkap.projectsem2final.service.PostCategoryService;
import com.bkap.projectsem2final.service.PostService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
@RequiredArgsConstructor
@SessionAttributes("userId")
public class PageController {

    private final PostService postService;
    private final PostCategoryService postCategoryService;
    private final PostRepository postRepository;
    private final AccountService accountService;
    private final CommentRepository commentRepository;
    private final CartService cartService;

    @GetMapping("/contact")
    public String contact(Model model) {
        model.addAttribute("page", "page/contact");
        return "home";

    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("page", "page/about");
        return "home";

    }

    @GetMapping("/blogs")
    public String blogs(Model model,  @RequestParam(defaultValue = "0", required = false) int page,
                        @RequestParam(defaultValue = "8", required = false) int size
    , @RequestParam(value = "postCt", required = false, defaultValue = "0") Integer postCategoryId
    , @RequestParam(defaultValue = "default", required = false) String sort
    ) {

        Sort sorting = Sort.unsorted();

        switch (sort) {
            case "name_asc":
                sorting = Sort.by("name").ascending();
                break;
            case "name_desc":
                sorting = Sort.by("name").descending();
                break;
        }

        List<Post> top8 = postService.findTop4ByOrderByNameAsc();
        List<PostCategory> postCategories = postCategoryService.findAll();

        if(!postCategoryId.equals(0))
        {
            Pageable pageable = PageRequest.of(page, size);
            model.addAttribute("posts", postService.findByCategory(postCategoryId, pageable));
            model.addAttribute("postCt", postCategoryId);

        }else {

            Page<Post> content = postService.findAll(page, size, sorting);

            model.addAttribute("posts", content);
        }


        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("sort", sort);

        model.addAttribute("top8", top8);
        model.addAttribute("postcategories", postCategories);
        model.addAttribute("page", "page/blogs");

        return "home";

    }

    @GetMapping("/privacy-policy")
    public String privacy(Model model) {
        model.addAttribute("page", "page/privacy");
        return "home";

    }

    @GetMapping("searchp")
    public String search(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "8") int size,
            @RequestParam("s") String keyword, Model model){

        //Paginate
        Pageable pageable = PageRequest.of(page, size);

        //search and paginate
        Page<Post> postPage = postService.search(keyword, pageable);

        model.addAttribute("posts", postPage);


        List<Post> top8 = postService.findTop4ByOrderByNameAsc();
        List<PostCategory> postCategories = postCategoryService.findAll();

        model.addAttribute("postcategories", postCategories);
        model.addAttribute("top8", top8);


        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("totalPages", postPage.getTotalPages());
        model.addAttribute("totalItems", postPage.getTotalElements());
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", "page/blogs");
        return "home";
    }



    @GetMapping("/blog-detail/{id}")
    public String blogDetail(Model model, @PathVariable Integer id) {
        List<Comment> comments = commentRepository.findCommentByPostId(id);
        int counter = commentRepository.countCommentByPostId(id);


        model.addAttribute("comments", comments);
        model.addAttribute("counter", counter);
        model.addAttribute("page", "page/blog-detail");
        model.addAttribute("post", postService.findById(id));
        return "home";
    }


    @PostMapping("/comment/{id}")
    public String comment(Model model, @PathVariable("id") Integer id,@RequestParam("text") String commentText, HttpServletRequest request
                          ) {
        HttpSession session = request.getSession();
        if( session.getAttribute("userId") == null){
          return  "redirect:/login";
        }
        Integer userId = (Integer) session.getAttribute("userId");

        Account ac = accountService.findById(userId);
        Post post = postRepository.findById(id).get();
        Date date = new Date();

        Comment cm = new Comment();
        cm.setCommentText(commentText);
        cm.setUser(ac);
        cm.setPost(post);
        cm.setCreatedDate(date);

        commentRepository.save(cm);

        return "redirect:/blogs";
    }

//    @GetMapping("/comment")
//    public String comment(Model model, @PathVariable("id") Integer id,@RequestParam("text") String commentText, HttpServletRequest request
//    ) {
//        HttpSession session = request.getSession();
//        if( session.getAttribute("userId") == null){
//            return  "redirect:/login";
//        }
//        Integer userId = (Integer) session.getAttribute("userId");
//
//        Account ac = accountService.findById(userId);
//        Post post = postRepository.findById(id).get();
//        Date date = new Date();
//
//        Comment cm = new Comment();
//        cm.setUser(ac);
//        cm.setPost(post);
//        cm.setCreatedDate(date);
//
//        return "redirect:/blogs";
//    }

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



}
