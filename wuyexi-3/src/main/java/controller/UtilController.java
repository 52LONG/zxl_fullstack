package controller;

import model.Archvist;
import model.Departmenter;
import model.Employee;
import model.Propertymanager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import services.ArchvistService;
import services.DepartmenterService;
import services.PropertymanagerService;
import services.UserService;

@Controller
@RequestMapping("/util")
public class UtilController {
    @Autowired
    private Employee employee;
    @Autowired
    private UserService userService;

    @Autowired
    private Departmenter departmenter;
    @Autowired
    private DepartmenterService departmenterService;

    @Autowired
    private Archvist archvist;
    @Autowired
    private ArchvistService archvistService;

    @Autowired
    private Propertymanager propertymanager;
    @Autowired
    private PropertymanagerService propertymanagerService;







}
