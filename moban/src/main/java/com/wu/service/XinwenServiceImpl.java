package com.wu.service;


import com.wu.mapper.XinwenMapper;
import com.wu.pojo.Xinwen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: 吴磊
 * @program: smbms-mvc
 * @create: 2021-01-25 11:47
 */
@Service
public class XinwenServiceImpl implements XinwenMapper {

    @Autowired
    private XinwenMapper xinwenMapper;


    @Override
    public List<Xinwen> getXinwenList(String name, String document, String organ, String text) {
        return xinwenMapper.getXinwenList(name, document, organ, text);
    }


    @Override
    public Xinwen getXinwenById(int id) {
        return xinwenMapper.getXinwenById(id);
    }

    @Override
    public int modifyXinwenById(Xinwen xinwen) {
        return xinwenMapper.modifyXinwenById(xinwen);
    }

    @Override
    public int deleteXinwenByID(int id) {
        return xinwenMapper.deleteXinwenByID(id);
    }

    @Override
    public int addXinwen(Xinwen xinwen) {
        return xinwenMapper.addXinwen(xinwen);
    }

}
