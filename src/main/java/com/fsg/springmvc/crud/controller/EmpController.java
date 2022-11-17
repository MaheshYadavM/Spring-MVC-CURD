package com.fsg.springmvc.crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fsg.springmvc.crud.model.Employee;
import com.fsg.springmvc.crud.service.EmpService;

@Controller
@RequestMapping
public class EmpController {

	@Autowired
	private EmpService empService;

	@RequestMapping("addEmp")
	public String addEmp() {
		return "AddEmp";
	}

	@PostMapping("/insertEmp")
	public String insertEmployee(@ModelAttribute("insertEmp") Employee emp) {
		empService.addEmployee(emp);
		return "AddEmp";
	}

	@GetMapping("empReport")
	public String lodeEmp(Model model) {
		model.addAttribute("employee", empService.getAllEmp());
		model.addAttribute("title", "Emp Report");

		return "EmpDetails";
	}

	@GetMapping("editEmp/{id}")
	public String lodeEditForm(@PathVariable(value = "id") Long id, Model model) {
		Employee emp = empService.getById(id);

		System.out.println(emp);
		model.addAttribute("employee", emp);
		model.addAttribute("title", "Edit Employee");

		return "EditEmp";
	}

	@PostMapping("/editEmp/updateEmp")
	public String updateEmp(@ModelAttribute("updateEmp") Employee emp) {
		empService.updateEmp(emp);

		return "redirect:/empReport";

	}

	@GetMapping("/deleteEmp/{id}")
	public String deleteEmp(@PathVariable Long id) {
		empService.deleteEmp(id);

		return "redirect:/empReport";
	}
}
