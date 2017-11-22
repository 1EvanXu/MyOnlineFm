package fm.dao;

import fm.beans.Singer;
import java.util.List;

public interface SingerDao {

    void insertSinger(Singer singer);

    void deleteSingerById(int singerId);

    void updateSinger(Singer singer);

    List<Singer> selectAllSingers();

    Singer selectSingerById(int singerId);

    Singer selectSingerByName(String singerName);

    int selectNumberOfSingers();

    List<Singer> selectSpecifiedNumberOfSingers(int begin, int end);

    List<Singer> selectSingersByName(String singerName);
}
