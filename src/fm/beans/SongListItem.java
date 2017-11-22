package fm.beans;

public class SongListItem {

    private Long songId;
    private String songName;
    private String singerName;
    private String locationPath;
    private String coverImagePath;

    public SongListItem(Long songId, String songName, String singerName, String locationPath, String coverImagePath) {
        this.songId = songId;
        this.songName = songName;
        this.singerName = singerName;
        this.locationPath = locationPath;
        this.coverImagePath = coverImagePath;
    }

    public Long getSongId() {
        return songId;
    }

    public void setSongId(Long songId) {
        this.songId = songId;
    }

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName;
    }

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }

    public String getLocationPath() {
        return locationPath;
    }

    public void setLocationPath(String locationPath) {
        this.locationPath = locationPath;
    }

    public String getCoverImagePath() {
        return coverImagePath;
    }

    public void setCoverImagePath(String coverImagePath) {
        this.coverImagePath = coverImagePath;
    }

    @Override
    public String toString() {
        return "SongListItem{" +
                "songId=" + songId +
                ", songName='" + songName + '\'' +
                ", singerName='" + singerName + '\'' +
                ", locationPath='" + locationPath + '\'' +
                ", coverImagePath='" + coverImagePath + '\'' +
                '}';
    }
}
