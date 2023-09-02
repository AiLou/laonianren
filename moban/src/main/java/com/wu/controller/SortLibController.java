package com.wu.controller;


import com.wu.mapper.SortLibMapper;
import com.wu.mapper.TableInfoMapper;
import com.wu.pojo.SortLib;
import com.wu.pojo.Tree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class SortLibController {

    @Autowired
    public SortLibMapper sortLibMapper;

    @Autowired
    public TableInfoMapper tableInfoMapper;

    @GetMapping("/getsorttree")
    public List<Tree> getsorttree(){
        int num = 0;
        List<SortLib> all = sortLibMapper.getAll();
        for (SortLib sortLib : all) {
            num = sortLib.getId();
        }
        //总的树结构
        List<Tree> trees = new ArrayList<>();
        for(int i=1;i<=num;i++){
            //取出id相等的一组数据
            List<SortLib> byId = sortLibMapper.getById(i);
            //每组id相等的一组树结构
            List<Tree> trees1 = new ArrayList<>();
            //倒序循环添加树结构==============================
            //添加末尾的数据
            if(byId.size()>1) {
                System.out.println();
                Tree t1 = new Tree(byId.get(byId.size() - 1).getName()+"("+tableInfoMapper.getnumByType(byId.get(byId.size() - 1).getName())+")", null);
                trees1.add(t1);
                for (int m = byId.size() - 2; m > 0; m--) {
                    //判断上一条数据是否为同级
                //    if (byId.get(byId.size() - 1).getId() == byId.get(m).getId()) {
                        Tree t2 = new Tree(byId.get(m).getName()+"("+tableInfoMapper.getnumByType(byId.get(m).getName())+")", null);
                        trees1.add(t2);
                //    }
                }
            }
            //===============================================

            //将子树取出来赋给总树
            if(byId.size()>1){
                int allnum = 0;
                for (SortLib sortLib : byId) {
                    allnum+=Integer.valueOf(tableInfoMapper.getnumByType(sortLib.getName()));
                }
                Tree t3 = new Tree(byId.get(0).getName()+"("+allnum+")",trees1);
                trees.add(t3);
            }else {
                Tree t3 = new Tree(byId.get(0).getName()+"("+tableInfoMapper.getnumByType(byId.get(0).getName())+")",trees1);
                trees.add(t3);
            }

        }

        return trees;
    }


}
