package fm.service;

import fm.beans.Singer;

import java.util.List;

public interface SingerService {

    void addSinger(Singer singer);

    void removeSingerById(int id);

    void modifySinger(Singer singer);

    List<Singer> findAllSinger();

    Singer findSingerById(int id);

    int getNumberOfSingers();

    List<Singer> getSpecifiedNumberOfSingers(int begin, int end);
}
