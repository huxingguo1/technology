package com.ystms.okr.common.enums;

/**
 * 删除状态
 * 
 * @author franker
 */
public enum DeletedStatus{
    /**
     * 未删除
     */
    NO("0", "未删除"),
    /**
     * 已删除
     */
    YES("1", "已删除");

    private final String code;
    private final String info;

    DeletedStatus(String code, String info)
    {
        this.code = code;
        this.info = info;
    }

    public String getCode()
    {
        return code;
    }

    public String getInfo()
    {
        return info;
    }
}
