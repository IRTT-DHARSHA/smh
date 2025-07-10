package com.example.smh.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import com.example.smh.Model.SModel;
import com.example.smh.Rep.Repository;

import jakarta.servlet.http.HttpServletRequest;
@Controller
public class SController {

    @Autowired
    Repository repo;
    
    @GetMapping("/")
	public String showLoginForm() {
		return "Login";
	}
	

    @GetMapping("/index")
    public String home() {
        return "index"; // index.jsp
    }

    @PostMapping("/students/add")
    public String add(@ModelAttribute SModel student, Model model) {
        repo.save(student);
        List<SModel> student1=repo.findAll();
        model.addAttribute("students", student1);
        return "success"; // success.jsp
    }
    @PostMapping("/login")
	public String login(@RequestParam String uname,@RequestParam String password,ModelMap model){
		
		if("irtt".equals(uname) && "123".equals(password) ) {
			return "index";
			
		}
		else {
			return "error";
		}
	}
    @GetMapping("/index1")
	public String showIndex() {
		return "index1";
	}
    
	
	
	@PostMapping("/addStudent")
	public String addStudent(@ModelAttribute SModel user, ModelMap model) {
	    repo.save(user);
	    List<SModel> students =repo.findAll();
	    model.addAttribute("students", students);
	    return "success";
	}
	
	@PostMapping("/update")
    public String updateStudent(@ModelAttribute SModel student, ModelMap model) {
        Optional<SModel> existing = repo.findById(student.getId());
        if (existing.isPresent()) {
            repo.save(student);
            List<SModel> students =repo.findAll();
		    model.addAttribute("students", students);
            model.addAttribute("message", "Student updated successfully!");
        } else {
            model.addAttribute("message", "Student not found!");
        }
        return "success";
    }
	
	
	@PostMapping("/delete")
    public String deleteStudent(@RequestParam("id") int id, ModelMap model) {
        if (repo.existsById(id)) {
            repo.deleteById(id);
            List<SModel> students =repo.findAll();
		    model.addAttribute("students", students);
            model.addAttribute("message", "Student deleted successfully!");
        } else {
            model.addAttribute("message", "Student not found!");
        }
        return "success";
    }
	
	  @GetMapping("/search")
	    public String searchStudent(@RequestParam("id") int id, ModelMap model) {
	        Optional<SModel> student = repo.findById(id);
	        if (student.isPresent()) {
	            model.addAttribute("searchedStudent", student.get());
	            model.addAttribute("message", "Student found!");
	        } else {
	            model.addAttribute("message", "Student not found!");
	        }
	        return "search";
	    }
	  
	  
	    
	  @GetMapping("/student_list")
		public String vieww(ModelMap model) {
			List<SModel> students =repo.findAll();
		    model.addAttribute("students", students);
			
			return "success";
		}

}

//    @GetMapping("/students/list")
//    public String listStudents(Model model) {
//        List<SModel> students = repo.findAll();
//        model.addAttribute("students", students);
//        return "student_list"; // student_list.jsp
//    }
    


/*
@Controller
public class SController {
@Autowired
Repository repo;

@GetMapping("/home")
public String home() {
    return "index"; 
}

@PostMapping("/submit")
public String submit(SModel student) {
    repo.save(student);
    return "index";
}
}
    
   */ 
    