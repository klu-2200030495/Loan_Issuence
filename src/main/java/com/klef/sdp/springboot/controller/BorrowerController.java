package com.klef.sdp.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.sdp.springboot.model.Borrower;
import com.klef.sdp.springboot.service.BorrowerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class BorrowerController {

    @Autowired
    private BorrowerService borrowerService;

    @GetMapping("/")
    public ModelAndView home(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        
        
            mv.setViewName("home");
        

        return mv;
    }

    @GetMapping("borrowerreg")
    public ModelAndView borrowerreg(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        
     
            mv.setViewName("borrowerreg");
        
        
        return mv;
    }

    @GetMapping("createborrower")
    public ModelAndView createborrower(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        
      
            mv.setViewName("createborrower");
        

        return mv;
    }

    @GetMapping("borrowerlogin")
    public ModelAndView borrowerlogin(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        
        
            mv.setViewName("borrowerhome");
        
        return mv;
    }

    @GetMapping("calculator")
    public ModelAndView calculator(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        
        if (session.getAttribute("borrower") == null) {
            mv.setViewName("borrowerlogin");
            mv.addObject("message", "Session expired. Please log in again.");
        } else {
            mv.setViewName("calculator");
        }

        return mv;
    }

    @GetMapping("borrowerprofile")
    public ModelAndView borrowerprofile(HttpSession session) {
        ModelAndView mv = new ModelAndView();

        if (session.getAttribute("borrower") == null) {
            mv.setViewName("borrowerlogin");
            mv.addObject("message", "Session expired. Please log in again.");
        } else {
            mv.setViewName("borrowerprofile");
        }

        return mv;
    }

    @GetMapping("borrowerhome")
    public ModelAndView borrowerhome(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        
        if (session.getAttribute("borrower") == null) {
            mv.setViewName("borrowerlogin");
            mv.addObject("message", "Session expired. Please log in again.");
        } else {
            mv.setViewName("borrowerhome");
        }

        return mv;
    }

    @GetMapping("lenderdashboard")
    public ModelAndView lenderdashboard(HttpSession session) {
        ModelAndView mv = new ModelAndView();

        if (session.getAttribute("borrower") == null) {
            mv.setViewName("borrowerlogin");
            mv.addObject("message", "Session expired. Please log in again.");
        } else {
            mv.setViewName("lenderdashboard");
        }

        return mv;
    }

    @GetMapping("borrowerdashboard")
    public ModelAndView borrowerdashboard(HttpSession session) {
        ModelAndView mv = new ModelAndView();

        if (session.getAttribute("borrower") == null) {
            mv.setViewName("borrowerlogin");
            mv.addObject("message", "Session expired. Please log in again.");
        } else {
            mv.setViewName("borrowerdashboard");
        }

        return mv;
    }

    @GetMapping("borrowerlogout")
    public ModelAndView borrowerlogout(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        
        session.invalidate();  // Invalidate the session on logout
        mv.setViewName("borrowerlogin");

        return mv;
    }

    @PostMapping("insertborrower")
    public ModelAndView insertborrower(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        String name = request.getParameter("bname");
        String gender = request.getParameter("bgender");
        String dob = request.getParameter("bdob");
        String email = request.getParameter("bemail");
        String location = request.getParameter("blocation");
        String contact = request.getParameter("bcontact");

        // Retrieve optional fields
        String annualIncomeStr = request.getParameter("annual_income");
        String monthlyExpensesStr = request.getParameter("monthly_expenses");
        String password = request.getParameter("bpwd");
        
        Borrower borrower = new Borrower();
        borrower.setName(name);
        borrower.setGender(gender);
        borrower.setDateofbirth(dob);
        borrower.setEmail(email);
        borrower.setPassword(password);
        borrower.setLocation(location);
        borrower.setContact(contact);

        // Set optional fields if provided
        if (annualIncomeStr != null && !annualIncomeStr.isEmpty()) {
            borrower.setAnnualIncome(Double.parseDouble(annualIncomeStr));
        }
        if (monthlyExpensesStr != null && !monthlyExpensesStr.isEmpty()) {
            borrower.setMonthlyExpenses(Double.parseDouble(monthlyExpensesStr));
        }

        String message = borrowerService.borrowerRegistration(borrower);

        if ("User already exists".equals(message)) {
            mv.setViewName("registrationfail");
        } else {
            mv.setViewName("regsuccess");
        }

        mv.addObject("message", message);
        return mv;
    }

    @PostMapping("checkborrowerlogin")
    public ModelAndView checkborrowerlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        String bemail = request.getParameter("bemail");
        String bpwd = request.getParameter("bpwd");
        
        Borrower borrower = borrowerService.checkBorrowerLogin(bemail, bpwd);

        if (borrower != null) {
            HttpSession session = request.getSession();
            session.setAttribute("borrower", borrower);
            mv.setViewName("borrowerhome");
        } else {
            mv.setViewName("borrowerlogin");
            mv.addObject("message", "Login Failed");
        }

        return mv;
    }

    @GetMapping("/editProfile")
    public String editProfile(HttpSession session, Model model) {
        Borrower borrower = (Borrower) session.getAttribute("borrower");

        if (borrower == null) {
            return "redirect:/borrowerlogin";
        } else {
            model.addAttribute("borrower", borrower);
            return "editProfile";
        }
    }

    @PostMapping("/updateProfile")
    public String updateProfile(@RequestParam("id") int id, 
                                 @RequestParam("name") String name,
                                 @RequestParam("gender") String gender,
                                 @RequestParam("dob") String dob,
                                 @RequestParam("email") String email,
                                 @RequestParam("location") String location,
                                 @RequestParam("contact") String contact, 
                                 HttpSession session, Model model) {
        Borrower borrower = borrowerService.getBorrowerById(id);
        
        borrower.setName(name);
        borrower.setGender(gender);
        borrower.setDateofbirth(dob);
        borrower.setEmail(email);
        borrower.setLocation(location);
        borrower.setContact(contact);

        borrowerService.updateBorrower(borrower);
        
        session.setAttribute("borrower", borrower);
        model.addAttribute("borrower", borrower);
        
        return "borrowerprofile";
    }

    @GetMapping("/deleteborrower")
    public String deleteBorrower(@RequestParam("id") int id, RedirectAttributes redirectAttributes) {
        boolean isDeleted = borrowerService.deleteBorrowerById(id);

        if (isDeleted) {
            redirectAttributes.addFlashAttribute("successMessage", "Borrower deleted successfully.");
        } else {
            redirectAttributes.addFlashAttribute("errorMessage", "Failed to delete borrower.");
        }

        return "redirect:/viewallborrowers";
    }
}
