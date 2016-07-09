package com.chinasoft.service;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.annotations.common.util.StringHelper;

import com.chinasoft.dao.UsersDAO;
import com.chinasoft.pojo.Users;

public class UsersService {
	// dao层操作数据库
	// 一样需要get和set进行注入
	private UsersDAO usersDAO;

	public UsersDAO getUsersDAO() {
		return usersDAO;
	}

	public void setUsersDAO(UsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}

	// 这一层可以返回任意类型，不用通action层只能返回String
	// 此层也可以传参数
	public Users login(Users users) {
		List<Users> list = usersDAO.findByExample(users);
		if (list.size() > 0) {
			return list.get(0);
		} else {
			return null;
		}
	}

	public boolean register(Users users) {
		boolean flag = true;
		try {
			usersDAO.save(users);
		} catch (RuntimeException re) {
			flag = false;
			throw re;
		}
		return flag;
	}

	//修改个人信息
	public void changePInfo(Users users,String changeEmail,String changeName,String changeGender,String changeTele){
		Users u = usersDAO.findById(users.getUId());
		if(!"".equals(changeEmail)){
			u.setUEmail(changeEmail);
		}
		if(!"".equals(changeTele)){
			u.setUTele(changeTele);
		}
		if(!"".equals(changeName)){
			u.setUName(changeName);
		}
		if(!"".equals(changeGender)){
			u.setUGender(changeGender);
		}
		usersDAO.update(u);
		ServletActionContext.getRequest().getSession().setAttribute("users", u);
	}
	
	//修改个人用户密码
	public void changePPwd(Users users,String changePwd){
		Users u = usersDAO.findById(users.getUId());
		if(!"".equals(changePwd)){
			u.setUPwd(changePwd);
		}
		usersDAO.update(u);
		ServletActionContext.getRequest().getSession().setAttribute("users", u);
	}

	//根据用户id获得用户信息
	public Users getUsersInfo(int UId){
		return usersDAO.findById(UId);
	}
}