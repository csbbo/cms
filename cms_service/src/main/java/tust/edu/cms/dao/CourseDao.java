package tust.edu.cms.dao;

import org.springframework.stereotype.Repository;
import tust.edu.cms.entity.Course;

import java.util.List;

@Repository()
public interface CourseDao {
    Course select(String num);
    List<Course> selectTeacherCourses(String tnum);
    void updateAddStudent(String num);
    void updateDelStudent(String num);
    List<Course> selectMycoursebyCtime(String snum,String ctime);
}
