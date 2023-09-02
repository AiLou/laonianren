package com.wu.mapper;

import com.wu.pojo.SortLib;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface SortLibMapper {

    List<SortLib> getAll();
    List<SortLib> getById(int id);

}
