package model;

/**
 * �ղ�ʵ��
 * @author hlyin
 *
 */
public class Colletion {
	private int U_id;	//�û�id
	private int H_id;//����id�������
	private int C_Type; //�ղ����ͣ��·������ַ��������������󹺱�
	
	/**
	 * �����ղ��û�id
	 * @return
	 */
	public int getU_id() {
		return U_id;
	}
	/**
	 * �����ղ��û�id
	 * @param u_id
	 */
	public void setU_id(int u_id) {
		U_id = u_id;
	}
	
	/**
	 * �����ղط���id
	 * @return
	 */
	public int getH_id() {
		return H_id;
	}
	/**
	 * �����ղط���id
	 * @param h_id
	 */
	public void setH_id(int h_id) {
		H_id = h_id;
	}
	
	/**
	 * �����ղصķ������ͣ������ղص����·������ַ������⡢���⡢�󹺣�
	 * @return
	 */
	public int getC_Type() {
		return C_Type;
	}
	/**
	 * �����ղصķ������ͣ������ղص����·������ַ������⡢���⡢�󹺣�
	 * @param c_Type
	 */
	public void setC_Type(int c_Type) {
		C_Type = c_Type;
	}
	
	
	
}
