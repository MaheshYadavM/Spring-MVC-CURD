package com.fsg.springmvc.crud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.fsg.springmvc.crud.model.Employee;


@Component
public class EmpDao {

	@Autowired
	HibernateTemplate hiberTemplate;

	@Transactional
	public void addEmp(Employee emp) {
		hiberTemplate.save(emp);
	}

	public List<Employee> getAllEmp() {
		return hiberTemplate.loadAll(Employee.class);

	}

	@Transactional
	public Employee getEmpById(long id) {
		Employee emp = hiberTemplate.get(Employee.class, id);
		return emp;
	}

	@Transactional
	public void updateEmp(Employee emp) {
		hiberTemplate.update(emp);
	}

	@Transactional
	public void deleteEmp(long id) {
		hiberTemplate.delete(hiberTemplate.load(Employee.class, id));
	}
}
