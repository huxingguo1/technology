package com.ystms.okr.system.service.impl;

import java.util.List;

import com.ystms.okr.system.domain.SysDynamicConfig;
import com.ystms.okr.system.mapper.SysDynamicConfigMapper;
import com.ystms.okr.system.service.ISysDynamicConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 动态配置Service业务层处理
 * 
 * @author franker
 * @date 2021-01-06
 */
@Service
public class SysDynamicConfigServiceImpl implements ISysDynamicConfigService
{
    @Autowired
    private SysDynamicConfigMapper sysDynamicConfigMapper;

    /**
     * 查询动态配置
     * 
     * @param id 动态配置ID
     * @return 动态配置
     */
    @Override
    public SysDynamicConfig selectSysDynamicConfigById(Long id)
    {
        return sysDynamicConfigMapper.selectSysDynamicConfigById(id);
    }

    /**
     * 查询动态配置列表
     * 
     * @param sysDynamicConfig 动态配置
     * @return 动态配置
     */
    @Override
    public List<SysDynamicConfig> selectSysDynamicConfigList(SysDynamicConfig sysDynamicConfig)
    {
        return sysDynamicConfigMapper.selectSysDynamicConfigList(sysDynamicConfig);
    }

    /**
     * 新增动态配置
     * 
     * @param sysDynamicConfig 动态配置
     * @return 结果
     */
    @Override
    public int insertSysDynamicConfig(SysDynamicConfig sysDynamicConfig)
    {
        return sysDynamicConfigMapper.insertSysDynamicConfig(sysDynamicConfig);
    }

    /**
     * 修改动态配置
     * 
     * @param sysDynamicConfig 动态配置
     * @return 结果
     */
    @Override
    public int updateSysDynamicConfig(SysDynamicConfig sysDynamicConfig)
    {
        return sysDynamicConfigMapper.updateSysDynamicConfig(sysDynamicConfig);
    }

    /**
     * 批量删除动态配置
     * 
     * @param ids 需要删除的动态配置ID
     * @return 结果
     */
    @Override
    public int deleteSysDynamicConfigByIds(Long[] ids)
    {
        return sysDynamicConfigMapper.deleteSysDynamicConfigByIds(ids);
    }

    /**
     * 删除动态配置信息
     * 
     * @param id 动态配置ID
     * @return 结果
     */
    @Override
    public int deleteSysDynamicConfigById(Long id)
    {
        return sysDynamicConfigMapper.deleteSysDynamicConfigById(id);
    }
}
