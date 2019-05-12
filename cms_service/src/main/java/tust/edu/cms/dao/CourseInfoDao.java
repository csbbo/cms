package tust.edu.cms.dao;

import org.springframework.stereotype.Repository;
import tust.edu.cms.entity.CourseInfo;

import java.util.List;

@Repository()
public interface CourseInfoDao {
    List<CourseInfo> select(String num);
    List<CourseInfo> selectAll();
}
