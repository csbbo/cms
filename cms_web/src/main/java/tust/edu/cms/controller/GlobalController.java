package tust.edu.cms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import tust.edu.cms.dao.AdminUserDao;
import tust.edu.cms.dao.StudentDao;
import tust.edu.cms.dao.TeacherDao;
import tust.edu.cms.entity.AdminUser;
import tust.edu.cms.entity.Student;
import tust.edu.cms.entity.Teacher;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller("globalController")
public class GlobalController {
    @Autowired
    private StudentDao studentDao;
    @Autowired
    private TeacherDao teacherDao;
    @Autowired
    private AdminUserDao adminUserDao;

    @RequestMapping("/to_login")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String sn, @RequestParam String password){
        System.out.println(sn);
        Student student = studentDao.select(sn);
        Teacher teacher = teacherDao.select(sn);
        AdminUser adminUser = adminUserDao.selectName(sn);

        if (student!=null && student.getPassword().equals(password)){
            session.setAttribute("people",student);
            session.setAttribute("identity","student");
            return "redirect:/student/self";
        }else if(teacher!=null && teacher.getPassword().equals(password)){
            session.setAttribute("people",teacher);
            session.setAttribute("identity","teacher");
            return "redirect:/teacher/course_list";
        }else if (adminUser!=null && adminUser.getPassword().equals(password)){
            session.setAttribute("people",teacher);
            session.setAttribute("identity","admin");
            return "redirect:/admin/teacherlist";
        }else {
            return "redirect:to_login";
        }
    }
    @RequestMapping("/to_regist")
    public String toRegist(Map<String,Object> map){
        map.put("student",new Student());
        return "regist";
    }

    @RequestMapping("/regist")
    public String regist(Student student){
        Student stu = studentDao.select(student.getNum());
        if (stu!=null){
            return "redirect:to_regist";
        }else{
            studentDao.insert(student);
            return "redirect:to_login";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.setAttribute("people",null);
        session.setAttribute("identity",null);
        return "redirect:to_login";
    }
}

