package com.ystms.okr.web.controller.api;

import com.ystms.okr.common.constant.HttpStatus;
import com.ystms.okr.common.core.controller.BaseController;
import com.ystms.okr.common.core.domain.AjaxResult;
import com.ystms.okr.common.core.domain.entity.SysUser;
import com.ystms.okr.common.core.domain.model.LoginUser;
import com.ystms.okr.common.exception.CustomException;
import com.ystms.okr.common.utils.SecurityUtils;
import com.ystms.okr.common.utils.ServletUtils;
import com.ystms.okr.common.utils.StringUtils;
import com.ystms.okr.framework.web.service.SysPermissionService;
import com.ystms.okr.framework.web.service.TokenService;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Set;

/**
 * 手机端信息Controller
 * 
 * @author franker
 * @date 2021年6月3日
 */
@Api(tags = "手机端-接口信息")
@RestController
@RequestMapping("/mobile")
@Slf4j
public class SysLoginApiController extends BaseController
{
    @Autowired
    private TokenService tokenService;
    @Autowired
    private SysPermissionService permissionService;


    /**
     * 后台管理员端用户信息获取
     * @return
     */
    @GetMapping("getInfo")
    public AjaxResult getInfo()
    {
        if (StringUtils.isEmpty(SecurityUtils.getUsername())){
            throw new CustomException("请重新登录", HttpStatus.UNAUTHORIZED);
        }
        LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
        SysUser user = loginUser.getUser();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(user);
        // 权限集合
        Set<String> permissions = permissionService.getMenuPermission(user);
        AjaxResult ajax = AjaxResult.success();
        ajax.put("user", user);
        ajax.put("roles", roles);
        ajax.put("permissions", permissions);
        return ajax;
    }
}
