package com.ystms.okr.common.core.domain.entity;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.ystms.okr.common.annotation.Excel;
import com.ystms.okr.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * 移动端用户对象 apoip_users
 * 
 * @author yunsite
 */
@Data
public class MobileUser extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;

    /**
     * OpenId
     */
    @Excel(name = "OpenId")
    private String openId;

    /**
     * 昵称
     */
    @Excel(name = "昵称")
    private String nickName;

    /**
     * 性别
     */
    @Excel(name = "性别")
    private String gender;

    /**
     * 语言
     */
    @Excel(name = "语言")
    private String language;

    /**
     * 省
     */
    @Excel(name = "省")
    private String province;

    /**
     * 市
     */
    @Excel(name = "市")
    private String city;

    /**
     * 区
     */
    @Excel(name = "区")
    private String country;

    /**
     * 头像
     */
    @Excel(name = "头像")
    private String avatarUrl;

    /**
     * 微信开放平台Id
     */
    @Excel(name = "unionId")
    private String unionId;

    /**
     * 联系方式
     */
    @Excel(name = "联系方式")
    private String phoneNumber;

}
