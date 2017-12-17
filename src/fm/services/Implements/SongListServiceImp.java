package fm.services.Implements;

import fm.beans.SongListItem;
import fm.dao.SongListDao;
import fm.services.Interfaces.SongListService;
import java.util.List;

public class SongListServiceImp implements SongListService {
    private SongListDao songListDao;

    public void setSongListDao(SongListDao songListDao) {
        this.songListDao = songListDao;
    }

    @Override
    public List<SongListItem> getSongList() {
        return songListDao.selectAllSongListItem();
    }
}
