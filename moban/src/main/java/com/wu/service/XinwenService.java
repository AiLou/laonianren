package com.wu.service;

import com.wu.pojo.Xinwen;

import java.util.List;

/**
 * @author: 吴磊
 * @program: smbms-mvc
 * @create: 2021-01-25 11:37
 */
public interface XinwenService {
    List<Xinwen> getXinwenList(String name, String document, String organ, String text);

    Xinwen getXinwenById(int id);

    int modifyXinwenById(Xinwen xinwen);

    int deleteXinwenById(int id);

    int addXinwen(Xinwen xinwen);
}
