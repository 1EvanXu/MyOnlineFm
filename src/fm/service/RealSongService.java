package fm.service;

import fm.beans.Song;
import fm.dao.SingerDao;
import fm.dao.SongDao;

import java.util.List;

public class RealSongService implements SongService {

    private SongDao songDao = null;
    private SingerDao singerDao = null;

    public void setSongDao(SongDao songDao) {
        this.songDao = songDao;
    }

    public void setSingerDao(SingerDao singerDao) {
        this.singerDao = singerDao;
    }

    @Override
    public void addSong(Song song) {
        songDao.insertSong(song);
    }

    @Override
    public void addSong(Song song, String singerName) {
        Integer singerId = null;
        try {
            singerId = singerDao.selectSingerByName(singerName).getSingerId();
        } catch (Exception e) {}
        song.setSingerId(singerId);
        addSong(song);
    }

    @Override
    public Song findLastSong() {
        return songDao.selectLastSong();
    }

    @Override
    public void removeSongById(int id) {
        songDao.deleteSongById(id);
    }

    @Override
    public void modifySong(Song song) {
        songDao.updateSong(song);
    }

    @Override
    public List<Song> findAllSongs() {
        return songDao.selectAllSongs();
    }

    @Override
    public int getNumberOfSongs() {
        return songDao.selectNumberOfSongs();
    }


    @Override
    public List<Song> getSpecifiedNumberOfSongs(int begin, int end) {
        return songDao.selectSpecifiedNumberOfSongs(begin,end);
    }
}
