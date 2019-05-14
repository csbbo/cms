package tust.edu.cms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tust.edu.cms.dao.StudentDao;
import tust.edu.cms.dao.TeacherDao;
import tust.edu.cms.entity.Student;
import tust.edu.cms.entity.Teacher;

import java.util.List;
import java.util.Map;

@Controller("adminUserController")
@RequestMapping("/admin")
public class AdminUserController {
    @Autowired
    private TeacherDao teacherDao;
    @Autowired
    private StudentDao studentDao;

    @RequestMapping("/teacherlist")
    public String teacherList(Map<String,Object> map){
        List<Teacher> list = teacherDao.selectAll();
        map.put("list",list);
        return "admin_teacher_list";
    }

    @RequestMapping(value = "/teacherToMod",params = "tnum")
    public String teacherToMod(Map<String,Object> map,String tnum){
        Teacher teacher = teacherDao.select(tnum);
        map.put("teacher",new Teacher());
        map.put("old",teacher);
        return "admin_teacher_mod";
    }

    @RequestMapping("/teachermod")
    public String teacherMod(Teacher teacher){
        teacherDao.update(teacher);
        return "redirect:teacherlist";
    }

    @RequestMapping("/teacherToAdd")
    public String teacherToAdd(Map<String,Object> map){
        map.put("teacher",new Teacher());
        return "admin_add_teacher";
    }

    @RequestMapping("/teacherAdd")
    public String teacherToAdd(Map<String,Object> map, Teacher teacher){
        teacherDao.insert(teacher);
        return "redirect:teacherlist";
    }

    @RequestMapping("/studentlist")
    public String studentList(Map<String,Object> map){
        List<Student> list = studentDao.selectAll();
        map.put("list",list);
        return "admin_student_list";
    }

    @RequestMapping(value = "/studentToMod",params = "snum")
    public String studentToMod(Map<String,Object> map,String snum){
        Student student = studentDao.select(snum);
        map.put("student",new Student());
        map.put("old",student);
        return "admin_student_mod";
    }

    @RequestMapping("/studentmod")
    public String studentMod(Student student){
        studentDao.update(student);
        return "redirect:studentlist";
    }

}
