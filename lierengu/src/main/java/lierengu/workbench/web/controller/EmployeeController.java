package lierengu.workbench.web.controller;

import lierengu.commons.contants.Contants;
import lierengu.commons.domain.ReturnObject;
import lierengu.workbench.domain.Employee;
import lierengu.workbench.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/workbench/employee.do")
    public String index(HttpServletRequest request) {
        List<Employee> employees = employeeService.queryAllEmployees();
        request.setAttribute("employees", employees);
        return "workbench/employee";
    }

    @RequestMapping("/workbench/saveEmployee.do")
    @ResponseBody
    public Object saveEmployee(Employee employee) {

        ReturnObject returnObject = new ReturnObject();
        try {
            int i = employeeService.saveAddEmployee(employee);
            if (i > 0) {
                returnObject.setCode(Contants.CODE.getSuccess());
            } else {
                returnObject.setCode(Contants.CODE.getFail());
                returnObject.setMessage("请稍后重试。。。");
            }
        } catch (Exception e) {
            e.printStackTrace();

            returnObject.setCode(Contants.CODE.getFail());
            returnObject.setMessage("请稍后重试。。。");
        }
        return returnObject;
    }
}
