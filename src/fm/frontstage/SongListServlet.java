package fm.frontstage;

import fm.beans.SongListItem;
import fm.service.SongListService;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

public class SongListServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
        SongListService songListService = (SongListService) ac.getBean("songListService");
        List<SongListItem> songList = songListService.getSongList();
        Collections.shuffle(songList);

        req.setAttribute("songList", songList);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/musicPlayer.jsp");
        dispatcher.forward(req,resp);
    }

}
