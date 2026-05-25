package com.tka.reposisitory;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.entity.Employee;

@Repository
public class EmployeeRepository {
	@Autowired
	Session session;

	public String insertData(Employee e) {
		Transaction tr = session.beginTransaction();
		session.persist(e);
		tr.commit();
		session.close();
		return "Data is inserted";
	}

	public String deleteData(int empId) {
		Transaction tr = session.beginTransaction();
		Employee e = session.get(Employee.class, empId);
		session.remove(e);

		tr.commit();
		session.close();

		return "Data is deleted";
	}

	public Employee getSingleData(int empId) {
		Transaction tr = session.beginTransaction();
		Employee e = session.get(Employee.class, empId);
		tr.commit();
		session.close();

		return e;
	}

	public List<Employee> getAllData() {
		Transaction tr = session.beginTransaction();
		String hql = "from Employee";
		Query query = session.createQuery(hql);
		List<Employee> list = query.getResultList();
		tr.commit();
		session.close();

		return list;
	}

	public String updateData(Employee e, int empId) {
		Transaction tr = session.beginTransaction();
		Employee e1 = session.get(Employee.class, empId);
		e1.setEmpName(e.getEmpName());
		e1.setSalary(e.getSalary());
		e1.setPostition(e.getPostition());
		e1.setCity(e.getCity());
		session.merge(e1);
		tr.commit();
		session.close();

		return "Data is updated";

	}

}
