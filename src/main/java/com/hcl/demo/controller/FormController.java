package com.hcl.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hcl.demo.entity.Student;

@Controller
public class FormController {

		@RequestMapping("/home")
		public String home() {
			
			return "complex-form";
		}
	
		
		@RequestMapping(value = "/processform",method = RequestMethod.POST)
		public String handleForm(@ModelAttribute("student") Student student,
															BindingResult result) {     // to handle the errors
			System.out.println(student);
			if(result.hasErrors()) {
				
				return "complex-form";
			}
			return "success";
		}

}
