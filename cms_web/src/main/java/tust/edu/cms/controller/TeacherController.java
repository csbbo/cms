package tust.edu.cms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import tust.edu.cms.dao.CourseDao;
import tust.edu.cms.dao.StudentCourseDao;
import tust.edu.cms.dao.StudentDao;
import tust.edu.cms.dao.StudentInfoDao;
import tust.edu.cms.entity.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller("TeacherController")
@RequestMapping("/teacher")
public class TeacherController {
    @Autowired
    private CourseDao courseDao;
    @Autowired
    private StudentInfoDao studentInfoDao;
    @Autowired
    private StudentCourseDao studentCourseDao;

    @RequestMapping("/course_list")
    public String courseList(HttpSession session, Map<String,Object> map){
        Teacher teacher = (Teacher)session.getAttribute("people");
        List<Course> list = courseDao.selectTeacherCourses(teacher.getNum());
        map.put("list",list);
        return "teacher_course_list";
    }

    @RequestMapping(value = "/manager",params = "cnum")
    public String manager(Map<String,Object> map,String cnum){
        List<StudentInfo> list = studentInfoDao.selectInThisCourse(cnum);
        Course course = courseDao.select(cnum);
        map.put("list",list);
        map.put("course",course);
        return "teacher_manager_list";
    }

    @RequestMapping(value = "/totypeinscore/{cnum}/{snum}",method = RequestMethod.GET)
    public String toTypeinScore(Map<String,Object> map, @PathVariable String cnum,@PathVariable String snum){
        List<StudentInfo> list = studentInfoDao.selectInThisCourse(snum);
        map.put("list",list);
        map.put("cnum",cnum);
        map.put("snum",snum);
        return "teacher_typein_score";
    }

    @RequestMapping(value = "/typeinscore")
    public String typeinScore(@RequestParam String cnum,@RequestParam String snum,@RequestParam Integer score){
        studentCourseDao.updateScore(cnum,snum,score);
        return "redirect:manager?cnum="+cnum;
    }
}
