package com.wu.mapper;

import com.wu.pojo.TableInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface TableInfoMapper {

    List<TableInfo> getbytype(String type);
    String gettextbymc(String name);

    String getnumByType(String type);

}
