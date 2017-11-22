package fm.dao;

import fm.beans.SongListItem;

import java.util.List;

public interface SongListDao {

    List<SongListItem> selectAllSongListItem();
}
