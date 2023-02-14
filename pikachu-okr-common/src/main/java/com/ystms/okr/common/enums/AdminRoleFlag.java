package com.ystms.okr.common.enums;

/**
 * 管理员标识
 */
public enum AdminRoleFlag {
    /**
     * 超级管理员
     */
    SUPER_ADMIN("admin", "超级管理员"),
    /**
     * 一般管理员
     */
    ADMIN("common-admin", "一般管理员");

    /**
     * 审核状态
     * @param code 值
     * @param comment 描述
     */
    AdminRoleFlag(String code, String comment) {
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
