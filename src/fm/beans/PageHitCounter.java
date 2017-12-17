package fm.beans;

public class PageHitCounter {

    private int pageHitCount;

    private static PageHitCounter pageHitCounter = new PageHitCounter();

    private PageHitCounter() { }

    public int getPageHitCount() {
        return pageHitCount;
    }

    public void setPageHitCount(int pageHitCount) {
        this.pageHitCount = pageHitCount;
    }

    public void add(int step) {
        pageHitCount += step;
    }

    public static PageHitCounter getInstance() {
        return pageHitCounter;
    }
}
