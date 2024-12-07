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
  public ModelAndView home()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("home");
    return mv;
  }
  @GetMapping("borrowerreg")
  public ModelAndView borrowerreg() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("borrowerreg");
    return mv;
  }
  @GetMapping("createborrower")
  public ModelAndView createborrower() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("createborrower");
    return mv;
  }
  @GetMapping("borrowerlogin")
  public ModelAndView borrowerlogin() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("borrowerlogin");
    return mv;
  }
  @GetMapping("calculator")
  public ModelAndView calculator() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("calculator");
    return mv;
  }
  @GetMapping("borrowerprofile")
  public ModelAndView borrowerprofile() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("borrowerprofile");
    return mv;
  }
  @GetMapping("borrowerhome")
  public ModelAndView borrowerhome() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("borrowerhome");
    return mv;
  }
  @GetMapping("lenderdashboard")
  public ModelAndView lenderdashboard() {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("lenderdashboard");
      return mv;
  }
  @GetMapping("borrowerdashboard")
  public ModelAndView borrowerdashboard() {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("borrowerdashboard");
      return mv;
  }
  @GetMapping("borrowerlogout")
  public ModelAndView borrowerlogout() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("borrowerlogin");
    return mv;
  }
  @PostMapping("insertborrower")
  public ModelAndView insertborrower(HttpServletRequest request) {
      String name = request.getParameter("bname");
      String gender = request.getParameter("bgender");
      String dob = request.getParameter("bdob");
      String email = request.getParameter("bemail");
     
      String location = request.getParameter("blocation");
      String contact = request.getParameter("bcontact");
      
      // Retrieve annualIncome and monthlyExpenses as optional fields
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

      // Set annualIncome and monthlyExpenses if they are provided
      if (annualIncomeStr != null && !annualIncomeStr.isEmpty()) {
          borrower.setAnnualIncome(Double.parseDouble(annualIncomeStr));
      }
      if (monthlyExpensesStr != null && !monthlyExpensesStr.isEmpty()) {
          borrower.setMonthlyExpenses(Double.parseDouble(monthlyExpensesStr));
      }

      String message = borrowerService.borrowerRegistration(borrower);ModelAndView mv = new ModelAndView();
      if ("User already exists".equals(message)) {
          mv.setViewName("registrationfail"); // Redirect to userexists page
      } else {
          mv.setViewName("regsuccess"); // Redirect to registration success page
      }
      mv.addObject("message", message);
      return mv;
  }
  @PostMapping("insert")
  public String insertborrowerdmin(HttpServletRequest request) {
      String name = request.getParameter("bname");
      String gender = request.getParameter("bgender");
      String dob = request.getParameter("bdob");
      String email = request.getParameter("bemail");
     
      String location = request.getParameter("blocation");
      String contact = request.getParameter("bcontact");
      
      // Retrieve annualIncome and monthlyExpenses as optional fields
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

      // Set annualIncome and monthlyExpenses if they are provided
      if (annualIncomeStr != null && !annualIncomeStr.isEmpty()) {
          borrower.setAnnualIncome(Double.parseDouble(annualIncomeStr));
      }
      if (monthlyExpensesStr != null && !monthlyExpensesStr.isEmpty()) {
          borrower.setMonthlyExpenses(Double.parseDouble(monthlyExpensesStr));
      }

      String message = borrowerService.borrowerRegistration(borrower);

     
        return "redirect:/viewallborrowers"; // Redirect to registration success page
      
     
  }
   @GetMapping("/updateborrower")
      public String showUpdateForm(@RequestParam("id") int id, Model model) {
          // Fetch borrower by ID
          Borrower borrower = borrowerService.getBorrowerById(id);
          
          // Add borrower to model to display in the form
          model.addAttribute("borrower", borrower);
          
          return "updateborrower"; // This is the JSP or HTML view for the form
      }

   @PostMapping("/update")
   public String updateBorrower(@ModelAttribute Borrower borrower) {
       // Handle password separately, if not provided, retain the old one
       if (borrower.getPassword() == null || borrower.getPassword().isEmpty()) {
           Borrower existingBorrower = borrowerService.getBorrowerById(borrower.getId());
           borrower.setPassword(existingBorrower.getPassword()); // Retain existing password
       }
       
       borrowerService.updateBorrower(borrower);
       return "redirect:/viewallborrowers"; // Redirect to the view all borrowers page after update
   }
   
   @GetMapping("/deleteborrower")
      public String deleteBorrower(@RequestParam("id") int id, RedirectAttributes redirectAttributes) {
          boolean isDeleted = borrowerService.deleteBorrowerById(id);
          if (isDeleted) {
              redirectAttributes.addFlashAttribute("successMessage", "Borrower deleted successfully.");
          } else {
              redirectAttributes.addFlashAttribute("errorMessage", "Failed to delete borrower.");
          }
          return "redirect:/viewallborrowers"; // Adjust to the URL of the borrowers' list page
      }@PostMapping("checkborrowerlogin")
  public ModelAndView checkborrowerlogin(HttpServletRequest request) 
  {
     ModelAndView mv= new ModelAndView();
         String bemail = request.getParameter("bemail");
         String bpwd = request.getParameter("bpwd");
         
          Borrower borrower= borrowerService.checkBorrowerLogin(bemail,bpwd);
          
          if(borrower!=null)
          {
            HttpSession session = request.getSession();
            
            session.setAttribute("borrower", borrower);
            mv.setViewName("borrowerhome");
          }
          else 
          {
            mv.setViewName("borrowerlogin");
            mv.addObject("message","Login Failed");
          }
          return mv;
  }
  @GetMapping("/editProfile")
    public String editProfile(HttpSession session, Model model) {
        Borrower borrower = (Borrower) session.getAttribute("borrower");

        if (borrower != null) {
            model.addAttribute("borrower", borrower);
            return "editProfile"; // Make sure you have an editProfile.jsp or editProfile.html view
        } else {
            return "redirect:/borrowerlogin"; // Redirect to login if not logged in
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
        // Fetch borrower by ID
        Borrower borrower = borrowerService.getBorrowerById(id);
        
        // Update borrower details
        borrower.setName(name);
        borrower.setGender(gender);
        borrower.setDateofbirth(dob);
        borrower.setEmail(email);
        borrower.setLocation(location);
        borrower.setContact(contact);

        // Update borrower in the database
        borrowerService.updateBorrower(borrower);
        
        // Update session with the updated borrower data
        session.setAttribute("borrower", borrower);
        
        // Add the updated borrower to the model
        model.addAttribute("borrower", borrower);
        
        // Redirect to the profile page
        return "borrowerprofile"; // This will render the borrower profile page
    }

}