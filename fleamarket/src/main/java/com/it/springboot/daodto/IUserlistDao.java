package com.it.springboot.daodto;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IUserlistDao {

   public void save(UserlistDto dto);

    List<UserlistDto> findUser(String username);
}
