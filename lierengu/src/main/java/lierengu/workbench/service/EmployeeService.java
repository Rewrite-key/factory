package lierengu.workbench.service;

import lierengu.workbench.domain.Employee;

import java.util.List;

public interface EmployeeService {

    int saveAddEmployee(Employee employee);

    List<Employee> queryAllEmployees();
}
