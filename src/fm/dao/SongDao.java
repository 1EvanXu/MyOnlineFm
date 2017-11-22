package fm.dao;

import fm.beans.Song;

import java.util.List;

public interface SongDao {

    void insertSong(Song song);

    void deleteSongById(int songId);

    void updateSong(Song song);

    List<Song> selectAllSongs();

    Song selectLastSong();

    int selectNumberOfSongs();

    List<Song> selectSpecifiedNumberOfSongs(int begin, int end);

    Song selectSongById(int songId);

    List<Song> selectSongsByName(String songName);
}
