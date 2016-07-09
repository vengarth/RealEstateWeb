package com.chinasoft.service;

import java.util.List;

import com.chinasoft.dao.HouseSellEnterpriseDAO;
import com.chinasoft.pojo.EnterpriseUsers;
import com.chinasoft.pojo.HouseSellEnterprise;

public class HouseSellEnterpriseService {
	private HouseSellEnterpriseDAO houseSellEnterpriseDAO;
	
	public HouseSellEnterpriseDAO getHouseSellEnterpriseDAO() {
		return houseSellEnterpriseDAO;
	}


	public void setHouseSellEnterpriseDAO(
			HouseSellEnterpriseDAO houseSellEnterpriseDAO) {
		this.houseSellEnterpriseDAO = houseSellEnterpriseDAO;
	}


	
	public List<HouseSellEnterprise> getSellNewInfo(){
		return houseSellEnterpriseDAO.findAll();
		
//		return houseSellEnterpriseDAO.getSellNewInfo();
	}
	
//	�����ղر��е�HId��CType�ҵ��ղص���ҵ�·�
	public HouseSellEnterprise getCollectInfo(java.lang.Integer id){
		return houseSellEnterpriseDAO.findById(id);
	}
	//�����û���ҵ�û�id�����ҵ�û�����������¥��
	public List<HouseSellEnterprise> getInfo(EnterpriseUsers enterpriseUsers){
		List<HouseSellEnterprise> list = houseSellEnterpriseDAO.findByProperty("enterpriseUsers.UId", enterpriseUsers.getUId());
		return list;
	}

	//�����·�id�����·���Ϣ
	public HouseSellEnterprise getHouseSellEnterpriseInfo(int HId){
		return houseSellEnterpriseDAO.findById(HId);
	}
	
	//ɾ����ҵ�û�������ĳ��¥��
	public void deleteHouseSellEnterprise(int HId){
		HouseSellEnterprise ans = new HouseSellEnterprise();
		ans = houseSellEnterpriseDAO.findById(HId);
		houseSellEnterpriseDAO.delete(ans);
	}
}
