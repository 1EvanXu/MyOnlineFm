package fm.views.frontstage;

import fm.beans.PageHitCounter;
import fm.beans.SongListItem;
import fm.services.Interfaces.SongListService;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;

@Controller
public class SongListController {

    @RequestMapping(value="/startPlay.do")
    public ModelAndView generateSongsList(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView();

        ServletContext context = request.getServletContext();
        PageHitCounter pageHitCounter = (PageHitCounter) context.getAttribute("pageHitCounter");
        if (pageHitCounter == null){
            pageHitCounter = PageHitCounter.getInstance();
            pageHitCounter.setPageHitCount(1);
        }
        pageHitCounter.add(1);

        ApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(context);
        SongListService songListService = (SongListService) ac.getBean("songListService");
        List<SongListItem> songList = songListService.getSongList();
        Collections.shuffle(songList);
        mv.addObject("songList", songList);
        mv.setViewName("musicPlayer");
        return mv;

    }

    @RequestMapping(value = "/getHitCount.do")
    public void getHitCount(HttpServletRequest request, HttpServletResponse response) {
        ServletContext context = request.getServletContext();
        PageHitCounter pageHitCounter = (PageHitCounter) context.getAttribute("pageHitCounter");

        response.setContentType("text/html;charset=utf-8");

        PrintWriter out = null;
        try {
            out = response.getWriter();
            out.println(pageHitCounter.getPageHitCount());
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if (out != null)
                out.close();
        }

    }

}
