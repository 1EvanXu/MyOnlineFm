package fm.backstage;

import fm.beans.User;
import fm.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


public class BackstageLoginServlet extends HttpServlet {

    private ApplicationContext applicationContext = null;

    @Override
    public void init() throws ServletException {
        applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Get the username and password submitted by the login form
        String username = req.getParameter("username");
        String password = req.getParameter("password");


        //Define two RequestDispatcher: one for successful login, one for failed login
        //If the login succeeds, it will jump to the background management interface.
        //If the login fails, it will be forwarded to the login interface and replace the reason of login failure
        RequestDispatcher rightDispatcher = getServletContext().getRequestDispatcher("/manager");
        RequestDispatcher wrongDispatcher = getServletContext().getRequestDispatcher("/adminlogin.jsp");

        //Determine whether username is null, if the username is null,
        //return and not execute the following code
        if (username == null) {
            req.setAttribute("WrongMessage", "Username can't be empty !");
            wrongDispatcher.forward(req, resp);
            return;
        }


        req.setAttribute("username", username);

        //get all user information from the database
        List<User> users;
        try {
            UserService userService = (UserService) applicationContext.getBean("userService");
            users = userService.findAllUser();
        } catch (Exception e) {
            req.setAttribute("WrongMessage", "Failed to connect the database!");
            wrongDispatcher.forward(req, resp);
            return;
        }

        //Determine the username and password is correct
        //if correct
        for (User user: users){
            if (username.equals(user.getUsername())){
                if (password.equals(user.getPassword())){

                    HttpSession session = req.getSession(true);
                    session.setAttribute("username", username);
                    rightDispatcher.forward(req, resp);

                } else {
                    req.setAttribute("WrongMessage", "Password is wrong !");
                    wrongDispatcher.forward(req, resp);
                }
                return;
            }
        }
        req.setAttribute("WrongMessage", "The username you input not exist !");
        wrongDispatcher.forward(req, resp);
    }
}
