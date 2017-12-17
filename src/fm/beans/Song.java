package fm.beans;

public class Song {
    private Integer songId;
    private Integer singerId = null;
    private String songName;
    private String songStyle = null;
    private String songLanguage = null;
    private String locationPath;
    private String coverImagePath = "images/default.jpg";

    public Song() { }

    public Song(Integer singerId, String songName, String songStyle, String songLanguage, String locationPath, String coverImagePath) {
        this.songName = songName;
        this.songStyle = songStyle;
        this.songLanguage = songLanguage;
        this.locationPath = locationPath;
        this.coverImagePath = coverImagePath;
    }

    public Integer getSingerId() {
        return singerId;
    }

    public void setSingerId(Integer singerId) {
        this.singerId = singerId;
    }

    public Integer getSongId() {
        return songId;
    }

    public void setSongId(Integer songId) {
        this.songId = songId;
    }

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName;
    }

    public String getSongStyle() {
        return songStyle;
    }

    public void setSongStyle(String songStyle) {
        this.songStyle = songStyle;
    }

    public String getSongLanguage() {
        return songLanguage;
    }

    public void setSongLanguage(String songLanguage) {
        this.songLanguage = songLanguage;
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
        return "Song{" +
                "songId=" + songId +
                ", singerId=" + singerId +
                ", songName='" + songName + '\'' +
                ", songStyle='" + songStyle + '\'' +
                ", songLanguage='" + songLanguage + '\'' +
                ", locationPath='" + locationPath + '\'' +
                ", coverImagePath='" + coverImagePath + '\'' +
                '}';
    }
}
