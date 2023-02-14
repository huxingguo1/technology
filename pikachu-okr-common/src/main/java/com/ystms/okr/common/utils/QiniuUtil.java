package com.ystms.okr.common.utils;

import com.ystms.okr.common.config.QiNiuConfig;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.Region;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;
import com.qiniu.util.StringMap;

import java.io.*;

/**
 * 七牛云存储上传工具类
 */
public class QiniuUtil {
    private QiNiuConfig qiNiuConfig;
    public QiniuUtil(QiNiuConfig qiNiuConfig){
        this.qiNiuConfig=qiNiuConfig;
    }

    /**
     * 简单上传，使用默认策略，只需要设置上传的空间名就可以了
     *
     * @param fileName 文件上传至七牛云空间的名称
     * @return
     */
    public String getUpToken(String fileName) {
        //<bucket>:<key>，表示只允许用户上传指定key的文件。在这种格式下文件默认允许“修改”，已存在同名资源则会被本次覆盖。
        //如果希望只能上传指定key的文件，并且不允许修改，那么可以将下面的 insertOnly 属性值设为 1。
        //第三个参数是token的过期时间
        /**
         * 密钥配置
         */
        Auth auth = Auth.create(qiNiuConfig.getAccessKey(), qiNiuConfig.getSecretKey());
        return auth.uploadToken(qiNiuConfig.getBucketName(), fileName, 3600, new StringMap().put("insertOnly", 0));
    }
    /**
     * 普通上传
     *
     * @param filePath 文件路径
     * @param fileName 文件上传至七牛云空间的名称
     * @throws IOException
     */
    public String upload(InputStream filePath, String fileName) {
        try {
            /**
             * 创建上传对象
             */
            UploadManager uploadManager = new UploadManager(new Configuration(Region.huanan()));

            //调用put方法上传
            Response res = uploadManager.put(filePath, fileName, getUpToken(fileName), null, null);
            //打印返回的信息
            System.out.println(res.bodyString());
        } catch (QiniuException e) {
            e.printStackTrace();
            Response r = e.response;
            // 请求失败时打印的异常的信息
            System.out.println(r.toString());
            try {
                //响应的文本信息
                System.out.println(r.bodyString());
            } catch (QiniuException e1) {
                //ignore
                e.printStackTrace();
            }
        }
        return qiNiuConfig.getUrl() + "/" + fileName;
    }
}
