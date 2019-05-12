package tust.edu.cms.dao;

import org.springframework.stereotype.Repository;
import tust.edu.cms.entity.AdminUser;

import java.util.List;

@Repository()
public interface AdminUserDao {
    AdminUser select(int id);
    AdminUser selectName(String name);
}
