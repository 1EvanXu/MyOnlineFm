package fm.beans;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class OnlineUser implements HttpSessionBindingListener, HttpSessionListener{

    private Integer userId;
    private String userName;
    private String userEmail;
    private Integer userType = 0;

    private OnlineUsers onlineUsers = OnlineUsers.getInstance();

    public OnlineUser() {}

    public OnlineUser(Integer userId, String userName, String userEmail, Integer userType) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userType = userType;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    @Override
    public void valueBound(HttpSessionBindingEvent httpSessionBindingEvent) {
        onlineUsers.add(userName, userType);
        System.out.println(userName + "已经绑定到Session");
    }

    @Override
    public void valueUnbound(HttpSessionBindingEvent httpSessionBindingEvent) {
        onlineUsers.remove(userName);
        System.out.println(userName + "已经Session解除绑定");
    }

    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        System.out.println("会话已创建, 会话ID：" + httpSessionEvent.getSession().getId());
        System.out.println("会话创建时间：" + httpSessionEvent.getSession().getCreationTime());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        onlineUsers.remove(userName);
        System.out.println(userName + "已经Session解除绑定");
        System.out.println("会话销毁时间：" + httpSessionEvent.getSession().getLastAccessedTime());
    }

    @Override
    public String toString() {
        return "OnlineUser{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userType=" + userType +
                '}';
    }
}
