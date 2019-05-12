package tust.edu.cms.dao;

import org.springframework.stereotype.Repository;
import tust.edu.cms.entity.Student;

import java.util.List;

@Repository()
public interface StudentDao {
    void insert(Student instance);
    void update(Student instance);
    void delete(String num);
    Student select(String num);
    List<Student> selectAll();
}
