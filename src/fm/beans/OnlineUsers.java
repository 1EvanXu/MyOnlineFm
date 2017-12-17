package fm.beans;

import java.util.Map;
import java.util.TreeMap;

public class OnlineUsers {

    private static final OnlineUsers ONLINE_USERS = new OnlineUsers();

    private volatile Map<String, Integer> onlineUsers = new TreeMap<>();

    public void add(String username, Integer userType) {
        onlineUsers.put(username, userType);

    }

    public void remove(String username) {
        onlineUsers.remove(username);

    }

    public Map<String, Integer> getOnlineUsers() {
        return onlineUsers;
    }

    public int getNumberOfOnlineUsers() {
        return onlineUsers.size();
    }

    public static OnlineUsers getInstance() {
        return ONLINE_USERS;
    }

}
