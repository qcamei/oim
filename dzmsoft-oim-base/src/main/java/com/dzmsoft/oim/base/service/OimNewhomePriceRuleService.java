package com.dzmsoft.oim.base.service;

import java.util.List;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.dzmsoft.oim.base.dto.OperateCityDto;
import com.dzmsoft.oim.base.pojo.OimNewhomePriceRule;
import com.dzmsoft.oim.base.pojo.OimNewhomePriceRuleExample;

/**
 * Copyright (C), dzmsoft Co., Ltd
 * @author 
 * @date 
 *
 * @version 
 */
public interface OimNewhomePriceRuleService {
    /**
     * 设置运营区域
     * @param id
     * @param operateCityDtos
     * @return
     */
    int setRegions(String id, List<OperateCityDto> operateCityDtos);
    /**
     * 根据城市名称获取规则
     * @param cityName
     * @return
     */
    OimNewhomePriceRule selectByCityName(String cityName);
	
	/**
     * 查询符合条件的记录数量
     * @dzmsoftgenerated 
     */
	int countByExample(OimNewhomePriceRuleExample example);
	
	/**
     * 根据条件插入记录
     * @dzmsoftgenerated 
     */
	int insertSelective(OimNewhomePriceRule record);
	
	/**
     * 根据主键查询记录
     * @dzmsoftgenerated 
     */
	OimNewhomePriceRule selectByPrimaryKey(String id);
	
	/**
     * 分页查询记录
     * @dzmsoftgenerated 
     */
	PageList<OimNewhomePriceRule> selectByExample(OimNewhomePriceRuleExample example,PageBounds pageBounds);
	
	/**
     * 根据条件查询记录
     * @dzmsoftgenerated 
     */
	List<OimNewhomePriceRule> selectByExample(OimNewhomePriceRuleExample example);
	
	/**
     * 根据主键更新记录
     * @dzmsoftgenerated 
     */
	int updateByPrimaryKeySelective(OimNewhomePriceRule record);
	
	/**
     * 根据查询条件更新记录
     * @dzmsoftgenerated 
     */
	int updateByExampleSelective(OimNewhomePriceRule record,
			OimNewhomePriceRuleExample example);
	
	/**
     * 根据主键生成记录
     * @dzmsoftgenerated 
     */
	int deleteByPrimaryKey(String id);
	
	/**
	 * 根据条件删除字段信息
	 * @dzmsoftgenerated 
	 * @param example
	 * @return
	 */
	int deleteByExample(OimNewhomePriceRuleExample example);
	
		/**
	 * 启用
	 * @dzmsoftgenerated 
	 * @param id
	 * @return
	 */
	int enable(String id);
	
	/**
	 * 启用
	 * @dzmsoftgenerated 
	 * @param id
	 * @return
	 */
	int disable(String id);
		
	
}