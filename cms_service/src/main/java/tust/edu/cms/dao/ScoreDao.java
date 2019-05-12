package tust.edu.cms.dao;

import org.springframework.stereotype.Repository;
import tust.edu.cms.entity.Score;

import java.util.List;

@Repository()
public interface ScoreDao {
    List<Score> select(String num);
}
