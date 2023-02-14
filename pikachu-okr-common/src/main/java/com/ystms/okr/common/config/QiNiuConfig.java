package com.ystms.okr.common.config;

import lombok.Data;

/**
 * 读取项目相关配置
 * 
 * @author yunsite
 */
@Data
public class QiNiuConfig
{


    /** 七牛钥匙 */
    private String accessKey;
    /**
     * 七牛密匙
     */
    private String secretKey;
    /**
     * 七牛上传域名地址
     */
    private String url;
    /**
     * 七牛上传空间名称
     */
    private String bucketName;
}
