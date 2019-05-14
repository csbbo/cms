package tust.edu.cms.dao;

import org.springframework.stereotype.Repository;
import tust.edu.cms.entity.Teacher;

import java.util.List;

@Repository()
public interface TeacherDao {
    List<Teacher> selectAll();
    Teacher select(String num);
    void insert(Teacher teacher);
    void update(Teacher teacher);
}
