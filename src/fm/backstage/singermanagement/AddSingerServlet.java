package fm.backstage.singermanagement;

import fm.backstage.upload.StringProcessor;
import fm.beans.Singer;
import fm.service.SingerService;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddSingerServlet extends HttpServlet {
    private ApplicationContext applicationContext = null;
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        //Get the spring container
        applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //RequestDispatcher: Send the results back to the singerManagement page
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/manager/singerManagement");

        /* Get the singer parameters from request and process them : Begin */
        String singerName = req.getParameter("singerName");

        if (singerName == null) {
            req.setAttribute("wrongMessage", "Singer name can't be empty !");
            dispatcher.forward(req, resp);
            return;
        }

        singerName = StringProcessor.convertEncodingFormat(singerName, "UTF-8");
        String gender = req.getParameter("gender");
        gender = ((gender.equals("Male")) ? "男" : "女");  //change gender to chinese
        String singerType = req.getParameter("singerType");
        singerType = StringProcessor.convertEncodingFormat(singerType, "UTF-8");
        String region = req.getParameter("region");
        region = StringProcessor.convertEncodingFormat(region, "UTF-8");
        /* Get the singer parameters from request and process them : End */

        SingerService singerService = (SingerService) applicationContext.getBean("singerService");

        Singer singer = new Singer(singerName, gender, singerType, region);

        try {
            singerService.addSinger(singer);
            req.setAttribute("rightMessage", "Completed to add singer !");
        } catch (Exception e) {
            req.setAttribute("wrongMessage", "Failed to add singer into database !");
        }

        dispatcher.forward(req, resp);
//        System.out.println("歌手名：" + singerName + " 编码格式：" + StringProcessor.getEncoding(singerName));
//        System.out.println("性别：" + gender + " 编码格式：" + StringProcessor.getEncoding(gender));
//        System.out.println("歌手类型：" + singerType + " 编码格式：" + StringProcessor.getEncoding(singerType));
//        System.out.println("地区：" + region + " 编码格式：" + StringProcessor.getEncoding(region));
    }
}
