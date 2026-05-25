package com.tka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.entity.Employee;
import com.tka.reposisitory.EmployeeRepository;

@Service
public class EmployeeService {
	@Autowired
	EmployeeRepository repo;

	public String insertdata(Employee e) {
		return repo.insertData(e);

	}

	public String deletetdata(int empId) {
		return repo.deleteData(empId);

	}

	public Employee getSingleData(int empId) {
		return repo.getSingleData(empId);

	}

	public List<Employee> getAllData() {
		return repo.getAllData();

	}

	public String updatedData(Employee e, int empId) {
		return repo.updateData(e, empId);

	}

}
