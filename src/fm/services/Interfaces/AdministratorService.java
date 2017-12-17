package fm.services.Interfaces;

import fm.beans.Administrator;

import java.util.List;

public interface AdministratorService {

    List<Administrator> getAllAdministrators();
    Administrator getAdministratorByName(String name);
}
