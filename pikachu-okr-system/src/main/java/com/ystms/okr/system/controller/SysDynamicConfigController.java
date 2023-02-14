package com.ystms.okr.system.controller;

import java.util.List;

import com.ystms.okr.common.annotation.Log;
import com.ystms.okr.system.domain.SysDynamicConfig;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ystms.okr.common.core.controller.BaseController;
import com.ystms.okr.common.core.domain.AjaxResult;
import com.ystms.okr.common.enums.BusinessType;
import com.ystms.okr.system.service.ISysDynamicConfigService;
import com.ystms.okr.common.utils.poi.ExcelUtil;
import com.ystms.okr.common.core.page.TableDataInfo;

/**
 * 动态配置Controller
 * 
 * @author franker
 * @date 2021-01-06
 */
@RestController
@RequestMapping("/system/dynamicConfig")
public class SysDynamicConfigController extends BaseController
{
    @Autowired
    private ISysDynamicConfigService sysDynamicConfigService;

    /**
     * 查询动态配置列表
     */
    @PreAuthorize("@ss.hasPermi('system:dynamicConfig:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysDynamicConfig sysDynamicConfig)
    {
        startPage();
        List<SysDynamicConfig> list = sysDynamicConfigService.selectSysDynamicConfigList(sysDynamicConfig);
        return getDataTable(list);
    }

    /**
     * 导出动态配置列表
     */
    @PreAuthorize("@ss.hasPermi('system:dynamicConfig:export')")
    @Log(title = "动态配置", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(SysDynamicConfig sysDynamicConfig)
    {
        List<SysDynamicConfig> list = sysDynamicConfigService.selectSysDynamicConfigList(sysDynamicConfig);
        ExcelUtil<SysDynamicConfig> util = new ExcelUtil<SysDynamicConfig>(SysDynamicConfig.class);
        return util.exportExcel(list, "dynamicConfig");
    }

    /**
     * 获取动态配置详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:dynamicConfig:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(sysDynamicConfigService.selectSysDynamicConfigById(id));
    }

    /**
     * 新增动态配置
     */
    @PreAuthorize("@ss.hasPermi('system:dynamicConfig:add')")
    @Log(title = "动态配置", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysDynamicConfig sysDynamicConfig)
    {
        return toAjax(sysDynamicConfigService.insertSysDynamicConfig(sysDynamicConfig));
    }

    /**
     * 修改动态配置
     */
    @PreAuthorize("@ss.hasPermi('system:dynamicConfig:edit')")
    @Log(title = "动态配置", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysDynamicConfig sysDynamicConfig)
    {
        return toAjax(sysDynamicConfigService.updateSysDynamicConfig(sysDynamicConfig));
    }

    /**
     * 删除动态配置
     */
    @PreAuthorize("@ss.hasPermi('system:dynamicConfig:remove')")
    @Log(title = "动态配置", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(sysDynamicConfigService.deleteSysDynamicConfigByIds(ids));
    }
}
