package com.ystms.okr.common.utils;

import com.ystms.okr.common.constant.HttpStatus;
import com.ystms.okr.common.exception.CustomException;
import com.ystms.okr.common.core.domain.entity.SysRole;
import com.ystms.okr.common.enums.AdminRoleFlag;
import com.ystms.okr.common.core.domain.model.LoginUser;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.List;

/**
 * 安全服务工具类
 *
 * @author yunsite
 */
@Slf4j
public class SecurityUtils
{
    /**
     * 获取用户账户
     **/
    public static String getUsername()
    {
        try
        {
            return getLoginUser().getUsername();
        }
        catch (Exception e)
        {
            throw new CustomException("获取用户账户异常", HttpStatus.UNAUTHORIZED);
        }
    }

    /**
     * 获取用户
     **/
    public static LoginUser getLoginUser()
    {
        try
        {
            return (LoginUser) getAuthentication().getPrincipal();
        }
        catch (Exception e)
        {
            throw new CustomException("获取用户信息异常", HttpStatus.UNAUTHORIZED);
        }
    }

    /**
     * 获取Authentication
     */
    public static Authentication getAuthentication()
    {
        return SecurityContextHolder.getContext().getAuthentication();
    }

    /**
     * 生成BCryptPasswordEncoder密码
     *
     * @param password 密码
     * @return 加密字符串
     */
    public static String encryptPassword(String password)
    {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        return passwordEncoder.encode(password);
    }

    /**
     * 判断密码是否相同
     *
     * @param rawPassword 真实密码
     * @param encodedPassword 加密后字符
     * @return 结果
     */
    public static boolean matchesPassword(String rawPassword, String encodedPassword)
    {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        return passwordEncoder.matches(rawPassword, encodedPassword);
    }

    /**
     * 是否为管理员
     *
     * @param userId 用户ID
     * @return 结果
     */
    public static boolean isAdmin(Long userId)
    {
        return userId != null && 1L == userId;
    }

    /**
     * 获取当前登录人角色身份是否为管理员
     * @return
     */
    public static String getAdminFlag(){
        // 超级管理员
        String superAdmin="";
        //普通管理员
        String admin="";
        log.info("SecurityUtils.getLoginUser().getUser():{}",SecurityUtils.getLoginUser().getUser());
        List<SysRole> roles = SecurityUtils.getLoginUser().getUser().getRoles();
        // 如果是管理员 查询所有人数据
        for(SysRole role:roles){
            if(AdminRoleFlag.SUPER_ADMIN.getCode().equals(role.getRoleKey())){
                superAdmin=AdminRoleFlag.SUPER_ADMIN.getCode();
            }else if(AdminRoleFlag.ADMIN.getCode().equals(role.getRoleKey())){
                admin=AdminRoleFlag.ADMIN.getCode();
            }
        }
        return superAdmin==""?(admin==""?"":admin):superAdmin;
    }
}
