package fm.dao;

import fm.beans.PageHitStatistics;
import java.util.List;

public interface PageHitDao {

    void insertPageHitStatisticsInfo(PageHitStatistics pageHitStatistics);

    List<PageHitStatistics> selectAllPageHitStatisticsInfo();

    Integer selectTotalHitCount();

    Integer selectHitCountByDay(String day);

    Integer selectHitCountByHour(String hour);

}
