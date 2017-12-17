package fm.services.Implements;

import fm.beans.User;
import fm.dao.UserDao;
import fm.services.Interfaces.UserService;

import java.util.List;

public class UserServiceImp implements UserService {

    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public void addNewUser(User user) {
        userDao.insertUser(user);
    }

    @Override
    public void modifyUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void removeUserById(Integer userId) {
        userDao.deleteUserById(userId);
    }

    @Override
    public User getUserByEmail(String email) {
        return userDao.selectUserByEmail(email);
    }

    @Override
    public User getUserByName(String name) {
        return userDao.selectUserByName(name);
    }

    @Override
    public List<User> getAllUsers() {
        return userDao.selectAllUsers();
    }
}
