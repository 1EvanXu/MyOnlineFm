package fm.services.Interfaces;

import fm.beans.PageHitStatistics;
import java.util.List;

public interface PageHitStatisticsService {

    void  addPageHitStatisticsInfo(PageHitStatistics pageHitStatistics);

    List<PageHitStatistics> getAllHitCountInfo();

    Integer getTotalHitCount();

    Integer getHitCountByDay(String day);

    Integer getHitCountByHour(String hour);
}
