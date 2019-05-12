package tust.edu.cms.dao;

import org.springframework.stereotype.Repository;
import tust.edu.cms.entity.StudentCource;

@Repository
public interface StudentCourseDao {
    StudentCource select(String snum,String cnum);
    void insert(String snum,String cnum);
    void delete(String snum,String cnum);
    void updateScore(String cnum,String snum,Integer score);
}
