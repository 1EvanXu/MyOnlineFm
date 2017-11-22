package fm.service;

import fm.beans.Singer;
import fm.dao.SingerDao;

import java.util.List;

public class RealSingerService implements SingerService{

    private SingerDao singerDao;

    public void setSingerDao(SingerDao singerDao) {
        this.singerDao = singerDao;
    }

    @Override
    public void addSinger(Singer singer) {
        singerDao.insertSinger(singer);
    }

    @Override
    public void removeSingerById(int id) {
        singerDao.deleteSingerById(id);
    }

    @Override
    public void modifySinger(Singer singer) {
        singerDao.updateSinger(singer);
    }

    @Override
    public List<Singer> findAllSinger() {
        return singerDao.selectAllSingers();
    }

    @Override
    public Singer findSingerById(int id) {
        return singerDao.selectSingerById(id);
    }

    @Override
    public int getNumberOfSingers() {
        return singerDao.selectNumberOfSingers();
    }

    @Override
    public List<Singer> getSpecifiedNumberOfSingers(int begin, int end) {
        return singerDao.selectSpecifiedNumberOfSingers(begin,end);
    }
}
