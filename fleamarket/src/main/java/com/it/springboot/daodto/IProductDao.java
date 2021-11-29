package com.it.springboot.daodto;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IProductDao {
    void save(ProductlistDto dto);
}
