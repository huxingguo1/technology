package com.ystms.okr.system.mapper;


import com.ystms.okr.common.core.domain.entity.MobileUser;

import java.util.List;

/**
 * 小程序用户Mapper接口
 *
 * @author wza
 * @date 2021-11-06
 */
public interface MobileUsersMapper {

    /**
     * 查询小程序用户
     *
     * @param id 小程序用户ID
     * @return 小程序用户
     */
    public MobileUser selectUsersById(Long id);

    /**
     * 查询小程序用户列表
     *
     * @param users 小程序用户
     * @return 小程序用户集合
     */
    public List<MobileUser> selectUsersList(MobileUser users);

    /**
     * 新增小程序用户
     *
     * @param users 小程序用户
     * @return 结果
     */
    public int insertUsers(MobileUser users);

    /**
     * 修改小程序用户
     *
     * @param users 小程序用户
     * @return 结果
     */
    public int updateUsers(MobileUser users);

    /**
     * 删除小程序用户
     *
     * @param id 小程序用户ID
     * @return 结果
     */
    public int deleteUsersById(Long id);

    /**
     * 批量删除小程序用户
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteUsersByIds(Long[] ids);

    /**
     * 根据OpenId获取用户信息
     *
     * @param openId
     * @return
     * @author wza
     */
    public MobileUser selectByOpenId(String openId);

    /**
     * 统计当前修理厂用户人员总数
     * @return
     */
    public Integer selectUserCount();

}
