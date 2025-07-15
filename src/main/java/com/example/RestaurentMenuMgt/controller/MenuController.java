package com.example.RestaurentMenuMgt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.RestaurentMenuMgt.model.MenuItem;
import com.example.RestaurentMenuMgt.model.User;
import com.example.RestaurentMenuMgt.repository.UserRepository;
import com.example.RestaurentMenuMgt.service.MenuService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MenuController {

    @Autowired
    private MenuService menuService;
    
    @Autowired
    private UserRepository userrepo;
    
    @GetMapping("/home")
    public String homepage() {
    	return "home";
    }
    @GetMapping("/")
    public String homeRedirect() {
        return "redirect:/login";  // redirect root to login
    }

    @GetMapping("/login")
    public String showLoginPage() {
        System.out.println("Login page showed");
        return "login";  // renders login.jsp
    }
    
    @PostMapping("/login")
    public String loginUser(@RequestParam String username,
                            @RequestParam String password,
                            HttpSession session,
                            Model model) {

        User user = userrepo.findByUsername(username);

        if (user != null && user.getPassword().equals(password)) {
            session.setAttribute("user", user);  // Save user in session
            return "redirect:/menu";
        }

        model.addAttribute("error", "Invalid username or password");
        return "login";
    }
    
    @GetMapping("/menu")
    public String listMenu(Model model) {
        model.addAttribute("menuItems", menuService.getAllMenuItems());
        return "menu/list";
    }
    
    @GetMapping("/viewmenu")
    public String viewMenu(Model model) {
    	model.addAttribute("menuList", menuService.getAllMenuItems());// from DB or static
        
        return "viewmenu"; // JSP file named menu.jsp
    }


    @GetMapping("/menu/create")
    public String showCreateForm(Model model) {
        model.addAttribute("menuItem", new MenuItem());
        return "menu/create";
    }

    @PostMapping("/menu/create")
    public String createMenuItem(@ModelAttribute("menuItem") MenuItem item) {
        menuService.save(item);
        return "redirect:/menu";
    }

    @GetMapping("/menu/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        MenuItem item = menuService.findById(id);
        if (item == null) return "redirect:/menu";
        model.addAttribute("menuItem", item);
        return "menu/edit";
    }

    @PostMapping("/menu/update")
    public String updateMenuItem(@ModelAttribute("menuItem") MenuItem item) {
        menuService.save(item);
        return "redirect:/menu";
    }

    @GetMapping("/menu/delete/{id}")
    public String deleteMenuItem(@PathVariable Long id) {
        menuService.delete(id);
        return "redirect:/menu";
    }

    @GetMapping("/menu/view/{id}")
    public String viewMenuItem(@PathVariable Long id, Model model) {
        MenuItem item = menuService.findById(id);
        if (item == null) return "redirect:/menu";
        model.addAttribute("menuItem", item);
        return "menu/view";
    }
}
