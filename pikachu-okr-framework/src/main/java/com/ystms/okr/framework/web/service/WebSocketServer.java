package com.ystms.okr.framework.web.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;

// @ServerEndpoint 声明并创建了webSocket端点, 并且指明了请求路径
// id 为客户端请求时携带的参数, 用于服务端区分客户端使用
@Component
@ServerEndpoint("/WebSocketServer/{sid}")
public class WebSocketServer {

    // 日志对象
    private static final Logger log = LoggerFactory.getLogger(WebSocketServer.class);

    // 静态变量，用来记录当前在线连接数。应该把它设计成线程安全的。
    private static int onlineCount = 0;

    // concurrent包的线程安全Set，用来存放每个客户端对应的MyWebSocket对象。
    private static CopyOnWriteArraySet<WebSocketServer> webSocketSet = new CopyOnWriteArraySet<>();
    // private static ConcurrentHashMap<String,WebSocketServer> websocketList = new ConcurrentHashMap<>();

    // 与某个客户端的连接会话，需要通过它来给客户端发送数据
    private Session session;

    // 接收sid
    private String sid = "";

    /*
     * 客户端创建连接时触发
     * */
    @OnOpen
    public void onOpen(Session session, @PathParam("sid") String sid) {
        this.session = session;
        // 当webSocketSet不存在sid，时添加到webSocketSet
        log.info("webSocketSet开始 ===》 " + webSocketSet);
        if (webSocketSet.size() > 0) {
            webSocketSet.forEach(w -> {
                log.info("供应商id： " + w.sid);
                if (!w.sid.equals(sid)) {
                    // 加入set中
                    webSocketSet.add(this);
                    // 在线数加1
                    addOnlineCount();
                }
            });
        } else {
            // 加入set中
            webSocketSet.add(this);
            // 在线数加1
            addOnlineCount();
        }
        log.info("webSocketSet结束 ===》 " + webSocketSet);
        log.info("有新窗口开始监听 - 供应商id：" + sid + ", 当前在线人数为" + getOnlineCount());
        this.sid = sid;
        try {
            sendMessage("连接成功");
        } catch (IOException e) {
            log.error("websocket IO异常");
        }
    }

    /**
     * 客户端连接关闭时触发
     **/
    @OnClose
    public void onClose() {
        log.info("this： " + this);
        // 从set中删除
        webSocketSet.remove(this);
        // 在线数减1
        subOnlineCount();
        log.info("webSocketSet关闭 ===》 " + webSocketSet);
        log.info("有一连接关闭！当前在线人数为：" + getOnlineCount());
    }

    /**
     * 接收到客户端消息时触发
     */
    @OnMessage
    public void onMessage(String message, Session session) {
        log.info("收到来自窗口 - 供应商id：" + sid + "的信息:" + message);
        // 主动 - 群发消息
        // for (WebSocketServer item : webSocketSet) {
        //    try {
        //        item.sendMessage(message);
        //    } catch (IOException e) {
        //        e.printStackTrace();
        //    }
        // }
    }

    /**
     * 连接发生异常时候触发
     */
    @OnError
    public void onError(Session session, Throwable error) {
        log.error("发生错误");
        error.printStackTrace();
    }

    /**
     * 实现服务器主动推送(向浏览器发消息)
     */
    public void sendMessage(String message) throws IOException {
        log.info("服务器消息推送：" + message);
        this.session.getBasicRemote().sendText(message);
    }

    /**
     * 发送消息到所有客户端
     * 指定sid则向指定客户端发消息
     * 不指定sid则向所有客户端发送消息
     */
    public static void sendInfo(String message, @PathParam("sid") String sid) throws IOException {
        log.info("推送消息到窗口" + sid + "，推送内容:" + message);
        for (WebSocketServer item : webSocketSet) {
            try {
                // 这里可以设定只推送给这个sid的，为null则全部推送
                if (sid == null) {
                    item.sendMessage(message);
                } else if (item.sid.equals(sid)) {
                    item.sendMessage(message);
                }
            } catch (IOException e) {
                e.printStackTrace();
                continue;
            }
        }
    }

    public static synchronized int getOnlineCount() {
        return onlineCount;
    }

    public static synchronized void addOnlineCount() {
        WebSocketServer.onlineCount++;
    }

    public static synchronized void subOnlineCount() {
        WebSocketServer.onlineCount--;
    }

    public static CopyOnWriteArraySet<WebSocketServer> getWebSocketSet() {
        return webSocketSet;
    }

}
