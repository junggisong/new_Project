package com.it.springboot.daodto;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IEvaluationDao {
    public void save(EvaluationDto dto);
}
