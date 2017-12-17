package fm.views.frontstage;

import fm.beans.OnlineUser;
import fm.beans.User;
import fm.services.Interfaces.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value="/front")
public class LoginAndRegisterController {

    @RequestMapping(value="login.do", method=POST)
    public void doLogin(String email, String password,
                        HttpServletResponse response, HttpServletRequest request, HttpSession session) throws ServletException, IOException {
        ApplicationContext applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
        UserService userService = (UserService) applicationContext.getBean("userService");
        User user = userService.getUserByEmail(email);
        String params = "?email=" + email;
        if (user != null) {
            if (password.equals(user.getUserPassword())) {
                OnlineUser onlineUser = new OnlineUser();
                onlineUser.setUserId(user.getUserId());
                onlineUser.setUserName(user.getUserName());
                onlineUser.setUserEmail(user.getUserEmail());
                onlineUser.setUserType(user.getUserType());
                session.setAttribute("user", onlineUser);
                response.sendRedirect(response.encodeRedirectURL("/fm/startPlay.do"));
                return;
            }
            params = params + "&errorMessage=1";
        } else {
            params = params + "&errorMessage=2";
        }

        response.sendRedirect(response.encodeRedirectURL("/fm/login.jsp") + params);
    }


    @RequestMapping(value="register.do", method=POST)
    public void doRegister(String email, @RequestParam("user")String username, String password, String password1,
                           HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String params = "?email=" + email + "&user=" + username;
        ApplicationContext applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(req.getServletContext());
        UserService userService = (UserService) applicationContext.getBean("userService");
        List<User> users = userService.getAllUsers();
        for (User user: users) {
            if (email.equals(user.getUserEmail())) {

                params = params + "&emailError=1";
                resp.sendRedirect(resp.encodeRedirectURL("/fm/register.jsp") + params);
                return;
            }
            if (user.equals(user.getUserName())){
                params = params + "&nameError=1";
                resp.sendRedirect(resp.encodeRedirectURL("/fm/register.jsp") + params);
                return;
            }
        }

        User newUser = new User();
        newUser.setUserName(username);
        newUser.setUserEmail(email);
        newUser.setUserPassword(password);

        userService.addNewUser(newUser);
        resp.sendRedirect(resp.encodeRedirectURL("/fm/registerSuccess.jsp?msg=1"));
    }

    @RequestMapping(value="logout.do")
    public void doLogout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {

        session.invalidate();
        response.sendRedirect(response.encodeRedirectURL("/fm/login.jsp"));
    }
}
