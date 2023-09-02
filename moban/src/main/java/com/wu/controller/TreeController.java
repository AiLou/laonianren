package com.wu.controller;

import com.wu.mapper.TreeMapper;
import com.wu.pojo.Tree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class TreeController {

    @Autowired
    private TreeMapper treeMapper;

    @GetMapping("/gettree")
    public List<Tree> gettree(){
        List<Tree> trees = new ArrayList<>();
        List<Tree> trees2 = new ArrayList<>();
        Tree t = new Tree("hzy",null);
        trees.add(t);
        trees2.add(t);
        Tree t1 = new Tree("hzy",trees2);
        trees.add(t1);
        return trees;
    }

}
