package com.wu.controller;

import com.alibaba.fastjson.JSONArray;
import com.mysql.cj.util.StringUtils;
import com.wu.mapper.TableInfoMapper;
import com.wu.pojo.Xinwen;
import com.wu.service.XinwenServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * @author: 吴磊
 * @program: smbms-mvc
 * @create: 2021-01-26 09:45
 */
@Controller
@RequestMapping("/jsp")
public class XinwenController {

    @Autowired
    private XinwenServiceImpl xinwenService;

    @RequestMapping("/xinwenManagement")
    public String toXinwenManagementPage(String queryName, String queryDocument, String queryOrgan, String queryText, Model model) {
        if (StringUtils.isNullOrEmpty(queryName)) {
            queryName = "";
        }
        if (StringUtils.isNullOrEmpty(queryDocument)) {
            queryDocument = "";
        }
        if (StringUtils.isNullOrEmpty(queryOrgan)) {
            queryOrgan = "";
        }
        if (StringUtils.isNullOrEmpty(queryText)) {
            queryText = "";
        }
        List<Xinwen> xinwenList = xinwenService.getXinwenList(queryName,queryDocument, queryOrgan,queryText);
        model.addAttribute("xinwenList", xinwenList);
        model.addAttribute("queryName", queryName);
        model.addAttribute("queryDocument", queryDocument);
        model.addAttribute("queryOrgan", queryOrgan);
        model.addAttribute("queryText", queryText);

        return "WEB-INF/jsp/xinwenlist";
    }


    @RequestMapping("/viewxinwen")
    public String toViewXinwenPage(String id, Model model) {
        System.out.println(id);

        if (!StringUtils.isNullOrEmpty(id)) {
            Xinwen xinwen = xinwenService.getXinwenById(Integer.parseInt(id));
            model.addAttribute("xinwen", xinwen);
        }
        return "WEB-INF/jsp/xinwenview";
    }

    @RequestMapping("/modifyxinwen")
    public String toModifyPage(String id, Model model) {
        if (!StringUtils.isNullOrEmpty(id)) {
            Xinwen xinwen = xinwenService.getXinwenById(Integer.parseInt(id));
            model.addAttribute("xinwen", xinwen);
        }
        return "WEB-INF/jsp/xinwenmodify";
    }


    @RequestMapping("/getxinwenlist")
    @ResponseBody
    public String getXinwenlist() {
        List<Xinwen> xinwenList = xinwenService.getXinwenList("", "","","");
        return JSONArray.toJSONString(xinwenList);
    }
}
