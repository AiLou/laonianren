package com.wu.mapper;

import com.wu.pojo.Role;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author: 吴磊
 * @program: smbms-mvc
 * @create: 2021-01-25 11:28
 */

@Component
public interface RoleMapper {

    /**
     * 获取角色列表
     *
     * @return
     */
    List<Role> getRoleList();

}
