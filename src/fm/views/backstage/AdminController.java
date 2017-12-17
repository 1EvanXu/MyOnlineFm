package fm.views.backstage;

import fm.beans.Administrator;
import fm.services.Interfaces.AdministratorService;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value="/manager")
public class AdminController {

    @RequestMapping(value="adminLogin.do", method=POST)
    public ModelAndView doAdminLogin(String adminName, String adminPassword, HttpSession session) {

        ModelAndView mv = new ModelAndView();
        mv.addObject("adminName", adminName);
        mv.setViewName("admin");
        ApplicationContext applicationContext = WebApplicationContextUtils.getWebApplicationContext(session.getServletContext());
        AdministratorService administratorService = (AdministratorService) applicationContext.getBean("administratorService");
        Administrator administrator = administratorService.getAdministratorByName(adminName);
        if (administrator != null) {
            if (adminPassword.equals(administrator.getAdminPassword())) {
                session.setAttribute("administrator", administrator.getAdminName());
                mv.setViewName("manager");
                return mv;
            }
            mv.addObject("adminLoginError", "输入密码错误！");
            return mv;
        }
        mv.addObject("adminLoginError", "用户名不存在！");
        return mv;
    }

    @RequestMapping(value="adminLogout.do")
    public void doAdminLogout(HttpServletResponse response, HttpSession session) {
        session.removeAttribute("administrator");
        session.invalidate();
        try {
            response.sendRedirect(response.encodeRedirectURL("/fm/admin"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
