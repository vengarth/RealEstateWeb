package com.chinasoft.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.chinasoft.pojo.EnterpriseUsers;
import com.chinasoft.pojo.HouseSellEnterprise;
import com.chinasoft.service.EnterpriseUsersService;
import com.chinasoft.service.HouseSellEnterpriseService;

public class CenterEnterpriseIndexAction {
	
	private HouseSellEnterpriseService houseSellEnterpriseService;
	private EnterpriseUsersService enterpriseUsersService;
	
	private String changeEnterPriseEmail;
	private String changeEnterPriseInfo;
	private String changeEnterPriseTele;
	private String changeEnterPriseAddr;
	
	private List<HouseSellEnterprise> houseSellEnterpriseList;
	
	private String changeEnterPrisePwd;
	
	private String delMyHouseSellEnterprise;

	public HouseSellEnterpriseService getHouseSellEnterpriseService() {
		return houseSellEnterpriseService;
	}

	public void setHouseSellEnterpriseService(
			HouseSellEnterpriseService houseSellEnterpriseService) {
		this.houseSellEnterpriseService = houseSellEnterpriseService;
	}

	public EnterpriseUsersService getEnterpriseUsersService() {
		return enterpriseUsersService;
	}

	public void setEnterpriseUsersService(
			EnterpriseUsersService enterpriseUsersService) {
		this.enterpriseUsersService = enterpriseUsersService;
	}

	public String getChangeEnterPriseEmail() {
		return changeEnterPriseEmail;
	}

	public void setChangeEnterPriseEmail(String changeEnterPriseEmail) {
		this.changeEnterPriseEmail = changeEnterPriseEmail;
	}

	public String getChangeEnterPriseInfo() {
		return changeEnterPriseInfo;
	}

	public void setChangeEnterPriseInfo(String changeEnterPriseInfo) {
		this.changeEnterPriseInfo = changeEnterPriseInfo;
	}

	public String getChangeEnterPriseTele() {
		return changeEnterPriseTele;
	}

	public void setChangeEnterPriseTele(String changeEnterPriseTele) {
		this.changeEnterPriseTele = changeEnterPriseTele;
	}

	public String getChangeEnterPriseAddr() {
		return changeEnterPriseAddr;
	}

	public void setChangeEnterPriseAddr(String changeEnterPriseAddr) {
		this.changeEnterPriseAddr = changeEnterPriseAddr;
	}

	public String getChangeEnterPrisePwd() {
		return changeEnterPrisePwd;
	}

	public void setChangeEnterPrisePwd(String changeEnterPrisePwd) {
		this.changeEnterPrisePwd = changeEnterPrisePwd;
	}

	public List<HouseSellEnterprise> getHouseSellEnterpriseList() {
		return houseSellEnterpriseList;
	}

	public String getDelMyHouseSellEnterprise() {
		return delMyHouseSellEnterprise;
	}

	public void setDelMyHouseSellEnterprise(String delMyHouseSellEnterprise) {
		this.delMyHouseSellEnterprise = delMyHouseSellEnterprise;
	}

	public void setHouseSellEnterpriseList(
			List<HouseSellEnterprise> houseSellEnterpriseList) {
		this.houseSellEnterpriseList = houseSellEnterpriseList;
	}

	public String LoadEnterpirseInfo(){
		try {
			HttpSession session1 = ServletActionContext.getRequest().getSession();
			houseSellEnterpriseList = houseSellEnterpriseService.getInfo((EnterpriseUsers)session1.getAttribute("enterpriseUsers"));
		} catch (Exception e) {
			System.out.println(e);
			return "error";
		}
		return "success";
	}
	
	public String changeEnterpriseInfo() {
		try {
			HttpSession session1 = ServletActionContext.getRequest().getSession();
			enterpriseUsersService.changeEnterpriseInfo((EnterpriseUsers)session1.getAttribute("enterpriseUsers"),changeEnterPriseEmail,changeEnterPriseInfo,changeEnterPriseTele,changeEnterPriseAddr);
		} catch (Exception e) {
			System.out.println(e);
			return "error";
		}
		return LoadEnterpirseInfo();
	}
	
	public String changeEnterprisePwd(){
		try {
			HttpSession session1 = ServletActionContext.getRequest().getSession();
			enterpriseUsersService.changeEnterprisePwd((EnterpriseUsers)session1.getAttribute("enterpriseUsers"),changeEnterPrisePwd);
		} catch (Exception e) {
			System.out.println(e);
			return "error";
		}
		return LoadEnterpirseInfo();
	}
	
	public String deleteHouseSellEnterprise(){
		try {
			houseSellEnterpriseService.deleteHouseSellEnterprise(Integer.parseInt(delMyHouseSellEnterprise));
		} catch (Exception e) {
			System.out.println(e);
			return "error";
		}
		return LoadEnterpirseInfo();
	}
	
}
