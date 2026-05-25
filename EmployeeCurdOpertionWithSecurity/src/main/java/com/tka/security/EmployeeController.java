package com.tka.security;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tka.entity.Employee;
import com.tka.service.EmployeeService;

@RestController
@RequestMapping("/Employee")
public class EmployeeController {
	@Autowired
	EmployeeService service;

	@PostMapping("/Register")
	public String insertData(@RequestBody Employee e) {
		return service.insertdata(e);

	}

	@DeleteMapping("/Remove/{empId}")
	public String deleteData(@PathVariable int empId) {
		return service.deletetdata(empId);

	}

	@GetMapping("/getSingleRecord/{empId}")
	public Employee getSingleData(@PathVariable int empId) {
		return service.getSingleData(empId);
	}

	@GetMapping("/getAllRecord")
	public List<Employee> getAllData() {
		return service.getAllData();
	}

	@PutMapping("/updatedData/{empId}")
	public String updateData(@RequestBody Employee e, @PathVariable int empId) {
		return service.updatedData(e, empId);
	}

}
