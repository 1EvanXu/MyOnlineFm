package fm.dao;

import fm.beans.User;

import java.util.List;

public interface UserDao {

    List<User> selectAllUsers();
    List<User> selectUserByName(String username);
}
