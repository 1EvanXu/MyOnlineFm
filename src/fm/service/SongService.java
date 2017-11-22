package fm.service;

import fm.beans.Song;

import java.util.List;

public interface SongService {

    void addSong(Song song);

    void addSong(Song song, String singerName);

    void removeSongById(int id);

    void modifySong(Song song);

    List<Song> findAllSongs();

    Song findLastSong();

    int getNumberOfSongs();

    List<Song> getSpecifiedNumberOfSongs(int begin, int end);
}
