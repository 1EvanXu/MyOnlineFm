package fm.services.Implements;

import fm.beans.PageHitStatistics;
import fm.dao.PageHitDao;
import fm.services.Interfaces.PageHitStatisticsService;;
import java.util.List;

public class PageHitStatisticsServiceImp implements PageHitStatisticsService {

    private PageHitDao pageHitDao;

    public void setPageHitDao(PageHitDao pageHitDao) {
        this.pageHitDao = pageHitDao;
    }

    @Override
    public void addPageHitStatisticsInfo(PageHitStatistics pageHitStatistics) {
        pageHitDao.insertPageHitStatisticsInfo(pageHitStatistics);
    }

    @Override
    public List<PageHitStatistics> getAllHitCountInfo() {
        return pageHitDao.selectAllPageHitStatisticsInfo();
    }

    @Override
    public Integer getTotalHitCount() {
        return pageHitDao.selectTotalHitCount();
    }

    @Override
    public Integer getHitCountByDay(String day) {
        return pageHitDao.selectHitCountByDay(day);
    }

    @Override
    public Integer getHitCountByHour(String hour) {
        return pageHitDao.selectHitCountByHour(hour);
    }
}
