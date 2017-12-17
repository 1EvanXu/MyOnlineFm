package fm.beans;

public class Singer {

    private Integer singerId;
    private String singerName;
    private String gender = "";
    private String singerType = "";
    private String region = "";

    public Singer() {}

    public Singer(String singerName, String gender, String singerType, String region) {
        this.singerName = singerName;
        this.gender = gender;
        this.singerType = singerType;
        this.region = region;
    }

    public Integer getSingerId() {
        return singerId;
    }

    public void setSingerId(Integer singerId) {
        this.singerId = singerId;
    }

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getSingerType() {
        return singerType;
    }

    public void setSingerType(String singerType) {
        this.singerType = singerType;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    @Override
    public String toString() {
        return "Singer{" +
                "singerId=" + singerId +
                ", singerName='" + singerName + '\'' +
                ", gender='" + gender + '\'' +
                ", singerType='" + singerType + '\'' +
                ", region='" + region + '\'' +
                '}';
    }
}
