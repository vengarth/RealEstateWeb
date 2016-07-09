package com.chinasoft.service;

import java.rmi.server.UID;
import java.util.List;

import org.apache.catalina.User;
import org.hibernate.validator.Size;

import com.chinasoft.dao.CollectDAO;
import com.chinasoft.pojo.Collect;
import com.chinasoft.pojo.Users;

public class CollectService {
	private CollectDAO collectDAO;

	public CollectDAO getCollectDAO() {
		return collectDAO;
	}

	public void setCollectDAO(CollectDAO collectDAO) {
		this.collectDAO = collectDAO;
	}
	
	//寻找用户的所有收藏
	public List<Collect> getCollectInfo(Users users){
		List<Collect> list = collectDAO.findByProperty("users.UId", users.getUId());
		return list;
		/*int length = list.size();
		return list.subList(0, length);*/
	}
	
	//删除对某个房屋/楼盘的关注
	public void deleteFollow(Users users,int delHId,int ctype){
		Collect ans = new Collect();
		List<Collect> list = collectDAO.findByProperty("users.UId", users.getUId());
		for(int i = 0; i < list.size(); i++){
			if(list.get(i).getCType() == ctype && list.get(i).getHId() == delHId){
				ans=list.get(i);
			}
		}
		collectDAO.delete(ans);
	}
	
	/*@SuppressWarnings("unchecked")
	public List<Collect> findAll(){
		return collectDAO.findAll();
	}*/
	
}
