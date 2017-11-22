package fm.service;

import fm.beans.User;
import fm.dao.UserDao;

import java.util.List;

public class RealUserService implements UserService {

    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public List<User> findAllUser() {
        return userDao.selectAllUsers();
    }
}
