package tust.edu.cms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tust.edu.cms.dao.*;
import tust.edu.cms.entity.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller("studentController")
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentDao studentDao;
    @Autowired
    private CourseInfoDao courseInfoDao;
    @Autowired
    private ScoreDao scoreDao;
    @Autowired
    private StudentCourseDao studentCourseDao;
    @Autowired
    private CourseDao courseDao;


    @RequestMapping("/self")
    public String self(HttpSession session, Map<String,Object> map){
        Student student = (Student)session.getAttribute("people");
        map.put("student",student);
        return "student_self";
    }

    @RequestMapping("/course_list")
    public String courseList(HttpSession session, Map<String,Object> map){
        List<CourseInfo> list = courseInfoDao.selectAll();
        map.put("list",list);
        return "student_course_list";
    }

    @RequestMapping("/mycourse")
    public String mycourse(HttpSession session, Map<String,Object> map){
        Student student = (Student)session.getAttribute("people");
        List<CourseInfo> list = courseInfoDao.select(student.getNum());
        map.put("list",list);
        return "student_mycourse_list";
    }

    @RequestMapping("/score")
    public String score(HttpSession session, Map<String,Object> map){
        Student student = (Student)session.getAttribute("people");
        List<Score> list = scoreDao.select(student.getNum());
        map.put("list",list);
        return "student_score_list";
    }

    @RequestMapping(value = "/remove",params = "cnum")
    public String remove(HttpSession session,String cnum){
        Student student = (Student)session.getAttribute("people");
        studentCourseDao.delete(student.getNum(),cnum);
        courseDao.updateDelStudent(cnum);
        return "redirect:mycourse";
    }

    @RequestMapping(value = "/addcourse",params = "cnum")
    public String addCourse(HttpSession session,Map<String,String> map,String cnum){
        Student student = (Student)session.getAttribute("people");
        Course course = courseDao.select(cnum);
        List<Course> courseList = courseDao.selectMycoursebyCtime(student.getNum(),course.getCtime());
        if (course.getStudentCount() >= course.getMaxCount()){
            map.put("error","选课人数已满!!!");
            return "student_add_course_error";
        }else if(!courseList.isEmpty()){
            map.put("error","时间冲突!!!");
            return "student_add_course_error";
        }
        else{
            studentCourseDao.insert(student.getNum(),cnum);
            courseDao.updateAddStudent(cnum);
            return "redirect:course_list";
        }
    }
}
