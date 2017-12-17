package fm.services.Interfaces;

import fm.beans.User;

import java.util.List;

public interface UserService {

    void addNewUser(User user);

    void modifyUser(User user);

    void removeUserById(Integer userId);

    User getUserByEmail(String email);

    User getUserByName(String name);

    List<User> getAllUsers();
}
