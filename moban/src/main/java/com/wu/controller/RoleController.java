package com.wu.controller;

import com.alibaba.fastjson.JSONArray;
import com.wu.service.RoleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author: 吴磊
 * @program: smbms-mvc
 * @create: 2021-01-25 20:46
 */
@Controller
@RequestMapping("/jsp")
public class RoleController {

    @Autowired
    private RoleServiceImpl roleService;

    @RequestMapping("/getrolelist")
    @ResponseBody
    public String getRoleList() {
        return JSONArray.toJSONString(roleService.getRoleList());
    }

}
