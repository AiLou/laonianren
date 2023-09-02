package com.wu.controller;

import com.mysql.cj.util.StringUtils;
import com.wu.mapper.TableInfoMapper;
import com.wu.pojo.TableInfo;
import com.wu.pojo.Xinwen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.wu.service.XinwenServiceImpl;

import java.util.ArrayList;
import java.util.List;


@RestController
public class TableInfoController {

    @Autowired
    private TableInfoMapper tableInfoMapper;

//    @CrossOrigin(origins = "http://localhost:8080")
    @GetMapping("/getbytype/{type}")
    public List<TableInfo> getbytype(@PathVariable("type") String type){
        System.out.println(type);
        List<TableInfo> tableInfos = tableInfoMapper.getbytype(type);
        return tableInfos;
    }

//    @RequestMapping(value="/gettextbymc", produces="text/html;charset=UTF-8")
//    @ResponseBody
    @GetMapping("/gettextbymc/{name}")
    public List<String> gettextbymc(@PathVariable("name") String name){
        String gettextbymc = tableInfoMapper.gettextbymc(name);
        List<String> strs = new ArrayList<>();
        strs.add(gettextbymc);
        return strs;
    }


//    @GetMapping("/gettextbymc")
//    public List<String> gettextbymc1(){
////        String gettextbymc = tableInfoMapper.gettextbymc(name);
//        System.out.println("+++++++++++++++++++++++++++++++++++++");
//        List<String> aaa = new ArrayList<>();
//        aaa.add("lll");
//        aaa.add("ddd");
//        return aaa;
//    }

}
