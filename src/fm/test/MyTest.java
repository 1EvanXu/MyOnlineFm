package fm.test;

import fm.beans.Singer;
import fm.beans.Song;
import fm.beans.User;
import fm.dao.SingerDao;
import fm.dao.SongDao;
import fm.dao.UserDao;
import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

public class MyTest {
    private SongDao songDao;
    private SingerDao singerDao;
    private UserDao userDao;
    private SqlSession sqlSession;

    @Before
    public void before() {
        sqlSession = MyBatisUtils.getSqlSession();
        songDao = sqlSession.getMapper(SongDao.class);
        singerDao = sqlSession.getMapper(SingerDao.class);
        userDao = sqlSession.getMapper(UserDao.class);
    }

    @After
    public void after() {
        if (sqlSession != null) {
            sqlSession.close();
        }
    }

    @Test
    public void testSelectAllSongs() {
        List<Song> songs = songDao.selectAllSongs();
        for (Song song: songs) {
            System.out.println(song);
        }
    }

    @Test
    public void testInsertSinger(){
        Singer singer = new Singer("Taylor Swift", "女", "歌手", "美国");
        singerDao.insertSinger(singer);
        sqlSession.commit();
    }


}