package fm.dao;


import fm.beans.Administrator;

import java.util.List;

public interface AdministratorDao {

    List<Administrator> selectAllAdministrators();
    Administrator selectAdministratorByName(String name);
}
