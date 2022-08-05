package lierengu.workbench.service.impl;

import lierengu.workbench.domain.Employee;
import lierengu.workbench.mapper.EmployeeMapper;
import lierengu.workbench.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public int saveAddEmployee(Employee employee) {
        return employeeMapper.insert(employee);
    }

    @Override
    public List<Employee> queryAllEmployees() {
        return employeeMapper.selectAll();
    }
}
