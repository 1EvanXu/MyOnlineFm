package fm.dao;

import fm.beans.User;

import java.util.List;

public interface UserDao {

    void insertUser(User user);

    void deleteUserById(Integer userId);

    void updateUser(User user);

    User selectUserByEmail(String email);

    User selectUserByName(String name);

    List<User> selectAllUsers();


}
