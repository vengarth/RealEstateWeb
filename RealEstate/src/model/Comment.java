package model;

/**
 * ����ʵ��
 * @author hlyin
 *
 */
public class Comment {
	private int U_id; //�û�id
	private int H_id;//����id�������
	private int C_Type; //�������ͣ��·������ַ������⡢���⡢��...��
	private String Comm_comment; //��������
	
	/**
	 * ���������û�id
	 * @return
	 */
	public int getU_id() {
		return U_id;
	}
	/**
	 * ���������û�id
	 * @param u_id
	 */
	public void setU_id(int u_id) {
		U_id = u_id;
	}
	
	/**
	 * ���ط���id
	 * @return
	 */
	public int getH_id() {
		return H_id;
	}
	/**
	 * ���÷���id
	 * @param h_id
	 */
	public void setH_id(int h_id) {
		H_id = h_id;
	}
	
	/**
	 * �������۵ķ������ͣ��·������ַ������⡢���⡢��...��
	 * @return
	 */
	public int getC_Type() {
		return C_Type;
	}
	/**
	 * �������۵ķ������ͣ��·������ַ������⡢���⡢��...��
	 * @param c_Type
	 */
	public void setC_Type(int c_Type) {
		C_Type = c_Type;
	}
	
	/**
	 * ������������
	 * @return
	 */
	public String getComm_comment() {
		return Comm_comment;
	}
	
	/**
	 * ������������
	 * @param comm_comment
	 */
	public void setComm_comment(String comm_comment) {
		Comm_comment = comm_comment;
	}
	
}
