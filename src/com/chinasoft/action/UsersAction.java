package com.chinasoft.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.chinasoft.pojo.Users;
import com.chinasoft.service.UsersService;

public class UsersAction {
	private UsersService service; //ҵ��ӿڶ�����Spring����������в���new��ֻ��get��set
	private Users users; //�û�����
	private String msg; //����ҳ���ֵ
	private HttpSession session;

	public UsersService getService() {
		return service;
	}

	public void setService(UsersService service) {
		this.service = service;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	//action�з����ķ���ֵ����ֻ����String
	//struts��ֵ����get��setʵ�֣�����action���еķ�����Ҫ������! ����ᱨ404
	public String login(){
		Users users1 = service.login(users);
		if(users1 != null){
			//users����session
			session = ServletActionContext.getRequest().getSession();
			session.setAttribute("users", users);
			
//			System.out.println("��½�ɹ�, " + users);
//			msg = "��½�ɹ�";
			return "logsuccess";
		}
		else{
//			msg = "��½ʧ��";
			return "error";
		}
	}
	
	/**
	 * �˳���½
	 * �Ƴ�session��users
	 * @return
	 */
	public String signOut(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.removeAttribute("users");
		return "signout";
	}
	
	public Users loiginTest(Users users){
		return service.login(users);
	}
	
	public String register(){
		Boolean flag = service.register(users);
		
		if(flag == true){
			//�浽session
			session = ServletActionContext.getRequest().getSession();
			session.setAttribute("users", users);
//			msg = "ע��ɹ�";
			return "regsuccess";
		}
		else{
//			msg = "ע��ʧ��";
			return "error";
		}
	}
	
	
	
}