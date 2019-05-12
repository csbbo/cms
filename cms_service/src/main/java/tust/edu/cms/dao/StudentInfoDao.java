package tust.edu.cms.dao;

import org.springframework.stereotype.Repository;
import tust.edu.cms.entity.Student;
import tust.edu.cms.entity.StudentInfo;

import java.util.List;

@Repository()
public interface StudentInfoDao {
    List<StudentInfo> selectInThisCourse(String cnum);
}
