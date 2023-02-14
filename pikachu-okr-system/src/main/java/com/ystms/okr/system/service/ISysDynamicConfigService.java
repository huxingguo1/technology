package com.ystms.okr.system.service;

import java.util.List;

import com.ystms.okr.system.domain.SysDynamicConfig;

/**
 * 动态配置Service接口
 * 
 * @author franker
 * @date 2021-01-06
 */
public interface ISysDynamicConfigService 
{
    /**
     * 查询动态配置
     * 
     * @param id 动态配置ID
     * @return 动态配置
     */
    public SysDynamicConfig selectSysDynamicConfigById(Long id);

    /**
     * 查询动态配置列表
     * 
     * @param sysDynamicConfig 动态配置
     * @return 动态配置集合
     */
    public List<SysDynamicConfig> selectSysDynamicConfigList(SysDynamicConfig sysDynamicConfig);

    /**
     * 新增动态配置
     * 
     * @param sysDynamicConfig 动态配置
     * @return 结果
     */
    public int insertSysDynamicConfig(SysDynamicConfig sysDynamicConfig);

    /**
     * 修改动态配置
     * 
     * @param sysDynamicConfig 动态配置
     * @return 结果
     */
    public int updateSysDynamicConfig(SysDynamicConfig sysDynamicConfig);

    /**
     * 批量删除动态配置
     * 
     * @param ids 需要删除的动态配置ID
     * @return 结果
     */
    public int deleteSysDynamicConfigByIds(Long[] ids);

    /**
     * 删除动态配置信息
     * 
     * @param id 动态配置ID
     * @return 结果
     */
    public int deleteSysDynamicConfigById(Long id);
}
