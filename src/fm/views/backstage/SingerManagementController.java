package fm.views.backstage;

import fm.beans.Singer;
import fm.services.Interfaces.SingerService;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping("/manager")
public class SingerManagementController {

    @RequestMapping(value="/addSinger.do", method=POST)
    public ModelAndView doAddSong(String singerName, String gender, String singerType, String region, HttpSession session){
        ApplicationContext applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addSinger");
        SingerService singerService = (SingerService) applicationContext.getBean("singerService");
        Singer singer = singerService.findSingerByName(singerName);
        if (singer != null) {
            mv.addObject("addSingerResult", singerName + " 已存在歌手列表中！");
            return mv;
        }

        singer = new Singer(singerName, gender, singerType, region);
        try {
            mv.addObject("singerName", singerName);
            mv.addObject("region", region);
            singerService.addSinger(singer);
            mv.addObject("addSingerResult", "OK!歌手信息添加成功！");
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("addSingerResult", "添加歌手信息失败！");
        }
        return mv;
    }

    @RequestMapping(value="removeSinger.do")
    public String doRemoveSinger(HttpServletRequest request) {

        if (request.getSession().getAttribute("administrator") == null) {
            return "admin";
        }

        int deleteId;
        try {
            deleteId = Integer.parseInt(request.getParameter("delete"));
            ApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(request.getServletContext());
            SingerService singerService = (SingerService) ac.getBean("singerService");
            singerService.removeSingerById(deleteId);
        } catch (Exception e) {
            return "errorPage";
        }
        return "singerInfo";
    }

    @RequestMapping(value="updateSingerInfo.do", method=POST)
    public void doUpdateSingerInfo(Singer singer, HttpServletRequest request, HttpServletResponse response) throws IOException {

        if (request.getSession().getAttribute("administrator") == null) {
            response.sendRedirect(response.encodeRedirectURL("/fm/admin"));
        }

        ApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(request.getServletContext());
        SingerService singerService = (SingerService) ac.getBean("singerService");
        try{
            singerService.modifySinger(singer);
            response.sendRedirect(response.encodeRedirectURL("/fm/management/managerIndex.jsp?part=updateSingerInfo&update=" +
                    singer.getSingerId() +"&updateResult=success"));
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(response.encodeRedirectURL("/fm/management/managerIndex.jsp?part=updateSingerInfo&update=" +
                    singer.getSingerId() +"&updateResult=fault"));
        }
    }
}
