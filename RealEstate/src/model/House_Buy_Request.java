package model;

/**
 * ����Ϣʵ��
 * @author hlyin
 *
 */
public class House_Buy_Request {
	private int H_id;  //����Ϣid
	private int U_id; //�û�id
	private String HDate;  //�󹺷�������
	private float Pirce; //�����۸�230��
	private float Size; //�������
	
	private int Region_id; //�ض�id
	private int HType_id; //����id
	private int HouseFloor;  //����¥��
	private int Decoration; //����װ���������װ����װ...��
	private int Orientation; //��������1~4��ʾ����������
	private String Remarkl; //��ע˵��

	private int HAvailability;//��Ч�ԣ��ѱ�����δ����ȣ�
	private int HAuthenticity; //��ʵ�ԣ���֤״̬��
	
	/**
	 * ��ȡ����Ϣ����id
	 * @return
	 */
	public int getH_id() {
		return H_id;
	}
	/**
	 * ��������Ϣ����id
	 * @param h_id
	 */
	public void setH_id(int h_id) {
		H_id = h_id;
	}
	
	/**
	 * ��ȡ�û�id
	 * @return
	 */
	public int getU_id() {
		return U_id;
	}
	/**
	 * �����û�id
	 * @param u_id
	 */
	public void setU_id(int u_id) {
		U_id = u_id;
	}
	
	/**
	 * �����󹺷�������
	 * @return
	 */
	public String getHDate() {
		return HDate;
	}
	/**
	 * �����󹺷�������
	 * @param hDate
	 */
	public void setHDate(String hDate) {
		HDate = hDate;
	}
	
	
	public float getPirce() {
		return Pirce;
	}
	public void setPirce(float pirce) {
		Pirce = pirce;
	}
	
	public float getSize() {
		return Size;
	}
	public void setSize(float size) {
		Size = size;
	}
	
	public int getRegion_id() {
		return Region_id;
	}
	public void setRegion_id(int region_id) {
		Region_id = region_id;
	}
	
	
	public int getHType_id() {
		return HType_id;
	}
	public void setHType_id(int hType_id) {
		HType_id = hType_id;
	}
	
	
	public int getHouseFloor() {
		return HouseFloor;
	}
	public void setHouseFloor(int houseFloor) {
		HouseFloor = houseFloor;
	}
	
	
	public int getDecoration() {
		return Decoration;
	}
	public void setDecoration(int decoration) {
		Decoration = decoration;
	}
	
	
	public int getOrientation() {
		return Orientation;
	}
	public void setOrientation(int orientation) {
		Orientation = orientation;
	}
	
	
	public String getRemarkl() {
		return Remarkl;
	}
	public void setRemarkl(String remarkl) {
		Remarkl = remarkl;
	}
	
	
	public int getHAvailability() {
		return HAvailability;
	}
	public void setHAvailability(int hAvailability) {
		HAvailability = hAvailability;
	}
	
	
	public int getHAuthenticity() {
		return HAuthenticity;
	}
	public void setHAuthenticity(int hAuthenticity) {
		HAuthenticity = hAuthenticity;
	}
	
}
