package fm.beans;

public class VisitRecord {

    private Integer id;
    private String ipAddress;
    private String hostname;
    private String timeStamp;
    private String visitUrl;

    public VisitRecord() {}

    public VisitRecord(String ipAddress, String hostname, String timeStamp, String visitUrl) {
        this.ipAddress = ipAddress;
        this.hostname = hostname;
        this.timeStamp = timeStamp;
        this.visitUrl = visitUrl;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public String getHostname() {
        return hostname;
    }

    public void setHostname(String hostname) {
        this.hostname = hostname;
    }

    public String getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(String timeStamp) {
        this.timeStamp = timeStamp;
    }

    public String getVisitUrl() {
        return visitUrl;
    }

    public void setVisitUrl(String visitUrl) {
        this.visitUrl = visitUrl;
    }

    @Override
    public String toString() {
        return "VisitRecord{" +
                "id=" + id +
                ", ipAddress='" + ipAddress + '\'' +
                ", hostname='" + hostname + '\'' +
                ", timeStamp='" + timeStamp + '\'' +
                ", visitUrl='" + visitUrl + '\'' +
                '}';
    }
}
