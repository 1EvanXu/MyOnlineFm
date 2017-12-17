package fm.services.Implements;

import fm.beans.Administrator;
import fm.dao.AdministratorDao;
import fm.services.Interfaces.AdministratorService;

import java.util.List;

public class AdministratorServiceImp implements AdministratorService{

    private AdministratorDao administratorDao;

    public void setAdministratorDao(AdministratorDao administratorDao) {
        this.administratorDao = administratorDao;
    }

    @Override
    public List<Administrator> getAllAdministrators() {
        return administratorDao.selectAllAdministrators();
    }

    @Override
    public Administrator getAdministratorByName(String name) {
        return administratorDao.selectAdministratorByName(name);
    }
}
