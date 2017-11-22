package fm.service;

import fm.beans.SongListItem;
import fm.dao.SongListDao;

import java.util.List;

public class RealSongListService implements SongListService{
    private SongListDao songListDao;

    public void setSongListDao(SongListDao songListDao) {
        this.songListDao = songListDao;
    }

    @Override
    public List<SongListItem> getSongList() {
        return songListDao.selectAllSongListItem();
    }
}
