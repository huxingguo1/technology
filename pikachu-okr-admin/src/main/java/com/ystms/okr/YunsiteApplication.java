package com.ystms.okr;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author yunsite
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class },
    scanBasePackages = "com.ystms.okr")
public class YunsiteApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(YunsiteApplication.class, args);
        System.out.println("---服务启动成功---");
    }
}
