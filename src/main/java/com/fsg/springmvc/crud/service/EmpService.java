package com.fsg.springmvc.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fsg.springmvc.crud.dao.EmpDao;
import com.fsg.springmvc.crud.model.Employee;

@Service
public class EmpService {

	@Autowired
	EmpDao empDao;

	public void addEmployee(Employee emp) {
		empDao.addEmp(emp);
	}

	public List<Employee> getAllEmp() {
		return empDao.getAllEmp();

	}

	public Employee getById(Long id) {
		return empDao.getEmpById(id);
	}

	public void updateEmp(Employee emp) {
		empDao.updateEmp(emp);
	}

	

	public void deleteEmp(Long id) {
		empDao.deleteEmp(id);
	}
}
