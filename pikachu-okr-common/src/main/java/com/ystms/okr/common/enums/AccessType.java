package com.ystms.okr.common.enums;

/**
 * 请求访问类型
 */
public enum AccessType {
    /**
     * 手机端
     */
    MOBILE_TERMINAL("mobile", "h5"),
    /**
     * pc
     */
    COMPUTER_TERMINAL("pc", "信息检索");

    /**
     * 状态
     * @param code 值
     * @param comment 描述
     */
    AccessType(String code, String comment) {
        this.code = code;
        this.comment = comment;
    }

    private String code;

    private String comment;

    public String getCode() {
        return code;
    }

    public String getComment() {
        return comment;
    }
}
