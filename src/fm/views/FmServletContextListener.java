package fm.views;

import fm.beans.PageHitCounter;
import fm.beans.PageHitStatistics;
import fm.services.Interfaces.PageHitStatisticsService;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.Timer;
import java.util.TimerTask;


public class FmServletContextListener implements ServletContextListener{

    private Timer saveHitCountTimer = null;

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext context = servletContextEvent.getServletContext();

        //get PageHitStatisticsService by spring container
        ApplicationContext applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(context);
        PageHitStatisticsService pageHitStatisticsService = (PageHitStatisticsService) applicationContext.getBean("pageHitStatisticsService");

        //Init page hit count, and add the count as a attribute into ServletContext
        Integer initPageHitCount = pageHitStatisticsService.getTotalHitCount();
        if (initPageHitCount == null)
            initPageHitCount = 1;
        PageHitCounter pageHitCounter = PageHitCounter.getInstance();
        pageHitCounter.setPageHitCount(initPageHitCount);
        context.setAttribute("pageHitCounter", pageHitCounter);

        saveHitCountTimer = new Timer();
        context.log("The quartz of saving hit count is started !");
        saveHitCountTimer.schedule(new SaveHitCountTask(pageHitStatisticsService, pageHitCounter, context),
                0, 3600000);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        ServletContext context = servletContextEvent.getServletContext();
        PageHitCounter pageHitCounter = (PageHitCounter) context.getAttribute("pageHitCounter");

        if (pageHitCounter == null) {
            return;
        }
        ApplicationContext applicationContext =
                WebApplicationContextUtils.getRequiredWebApplicationContext(context);
        PageHitStatisticsService pageHitStatisticsService =
                (PageHitStatisticsService) applicationContext.getBean("PageHitStatisticsService");

        int totalPageHitCount = pageHitStatisticsService.getTotalHitCount();

        int currentPageHitCount = pageHitCounter.getPageHitCount() - totalPageHitCount;
        pageHitStatisticsService.addPageHitStatisticsInfo(new PageHitStatistics(currentPageHitCount));


    }

    private class SaveHitCountTask extends TimerTask{

        private PageHitStatisticsService pageHitStatisticsService = null;
        private PageHitCounter pageHitCounter = null;
        private ServletContext context = null;
        private boolean isRunning = false;

        public SaveHitCountTask(PageHitStatisticsService pageHitStatisticsService, PageHitCounter pageHitCounter, ServletContext context) {
            this.pageHitStatisticsService = pageHitStatisticsService;
            this.pageHitCounter = pageHitCounter;
            this.context = context;
        }

        @Override
        public void run() {

            if (!isRunning) {

                isRunning = true;
                context.log("Begin Task ");

                int totalPageHitCount = pageHitStatisticsService.getTotalHitCount();

                int currentPageHitCount = pageHitCounter.getPageHitCount() - totalPageHitCount;
                pageHitStatisticsService.addPageHitStatisticsInfo(new PageHitStatistics(currentPageHitCount));

                isRunning = false;
                context.log("End Task ");

            }
            else {
                context.log("Last Task not end");
            }
        }

    }

}
