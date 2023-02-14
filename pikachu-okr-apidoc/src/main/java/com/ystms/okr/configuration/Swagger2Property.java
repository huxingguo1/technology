package com.ystms.okr.configuration;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * Copyright© 2010-2017 XinYi Group All Rights Reserved.
 *
 * swagger2配置属性
 *
 * @author David
 * @version 1.0
 * @date 2019/9/4 17:31
 */
@Component
@Setter
@Getter
@ConfigurationProperties(prefix = "swagger.apidoc")
public class Swagger2Property {
    private Boolean enable;
    /**
     * 文档标题
     */
    private String title;
    /**
     * 文档描述
     */
    private String description;
    /**
     * 接口版本
     */
    private String version;
    /**
     * 联系人
     */
    private String name;
    /**
     * 联系人网页
     */
    private String url;
    /**
     * 联系人邮箱
     */
    private String email;
}
