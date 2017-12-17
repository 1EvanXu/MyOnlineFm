package fm.views;

import fm.beans.VisitRecord;
import fm.services.Interfaces.VisitRecordService;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

public class VisitRecordListener implements ServletRequestListener {

    private ApplicationContext applicationContext = null;

    @Override
    public void requestDestroyed(ServletRequestEvent servletRequestEvent) {

    }

    @Override
    public void requestInitialized(ServletRequestEvent servletRequestEvent) {

        HttpServletRequest request = (HttpServletRequest) servletRequestEvent.getServletRequest();
        String ipAddress = request.getRemoteAddr();
        if (ipAddress.equals("127.0.0.1")) { return; }
        applicationContext = WebApplicationContextUtils.
                getRequiredWebApplicationContext(servletRequestEvent.getServletContext());

        VisitRecordService visitRecordService = (VisitRecordService)applicationContext.getBean("visitRecordService");
        VisitRecord visitRecord = new VisitRecord();

        try {

            visitRecord.setIpAddress(ipAddress);
            visitRecord.setHostname(request.getRemoteHost());
            visitRecord.setVisitUrl(request.getRequestURL().toString());
            visitRecordService.addVisitRecord(visitRecord);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
