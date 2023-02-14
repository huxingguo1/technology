package com.ystms.okr.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ystms.okr.common.annotation.Excel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ystms.okr.common.core.domain.BaseEntity;

/**
 * 动态配置对象 sys_dynamic_config
 * 
 * @author franker
 * @date 2021-01-06
 */
public class SysDynamicConfig extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 类型key */
    @Excel(name = "类型key")
    private String key;

    /** 类型值 */
    @Excel(name = "类型值")
    private String value;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtUpdate;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date gmtCreate;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setKey(String key) 
    {
        this.key = key;
    }

    public String getKey() 
    {
        return key;
    }
    public void setValue(String value) 
    {
        this.value = value;
    }

    public String getValue() 
    {
        return value;
    }
    public void setGmtUpdate(Date gmtUpdate) 
    {
        this.gmtUpdate = gmtUpdate;
    }

    public Date getGmtUpdate() 
    {
        return gmtUpdate;
    }
    public void setGmtCreate(Date gmtCreate) 
    {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtCreate() 
    {
        return gmtCreate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("key", getKey())
            .append("value", getValue())
            .append("gmtUpdate", getGmtUpdate())
            .append("gmtCreate", getGmtCreate())
            .toString();
    }
}
