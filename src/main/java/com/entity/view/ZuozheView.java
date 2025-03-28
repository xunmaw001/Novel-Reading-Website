package com.entity.view;

import com.entity.ZuozheEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 作者
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-07 10:13:33
 */
@TableName("zuozhe")
public class ZuozheView  extends ZuozheEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZuozheView(){
	}
 
 	public ZuozheView(ZuozheEntity zuozheEntity){
 	try {
			BeanUtils.copyProperties(this, zuozheEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
