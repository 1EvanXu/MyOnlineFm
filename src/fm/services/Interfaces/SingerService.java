package fm.services.Interfaces;

import fm.beans.Singer;

import java.util.List;

public interface SingerService {

    void addSinger(Singer singer);

    void removeSingerById(int id);

    void modifySinger(Singer singer);

    List<Singer> findAllSinger();

    Singer findSingerById(int id);

    Singer findSingerByName(String singerName);

    int getNumberOfSingers();

    List<Singer> getSpecifiedNumberOfSingers(int begin, int end);
}
