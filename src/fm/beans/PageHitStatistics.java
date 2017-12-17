package fm.beans;

public class PageHitStatistics {

    private Integer id;
    private String time;
    private Integer pageHitCount;

    public PageHitStatistics() { }

    public PageHitStatistics(Integer pageHitCount) {
        this.pageHitCount = pageHitCount;
    }

    public PageHitStatistics(String time, Integer pageHitCount) {
        this.time = time;
        this.pageHitCount = pageHitCount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getPageHitCount() {
        return pageHitCount;
    }

    public void setPageHitCount(Integer pageHitCount) {
        this.pageHitCount = pageHitCount;
    }

    @Override
    public String toString() {
        return "PageHitStatistics{" +
                "id=" + id +
                ", time=" + time +
                ", pageHitCount=" + pageHitCount +
                '}';
    }
}
