package com.wu.mapper;

import com.wu.pojo.Xinwen;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author: 吴磊
 * @program: smbms-mvc
 * @create: 2021-01-25 11:28
 */
@Component
public interface XinwenMapper {

    List<Xinwen> getXinwenList(@Param("name") String name, @Param("document") String document, @Param("organ") String organ, @Param("text") String text);

    Xinwen getXinwenById(@Param("id") int id);

    int modifyXinwenById(@Param("xinwen") Xinwen xinwen);

    int deleteXinwenByID(@Param("id") int id);

    int addXinwen(Xinwen xinwen);

}
