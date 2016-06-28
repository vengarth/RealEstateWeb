Use Realestate
Go

--��ͨ�û���
CREATE TABLE Users (
	U_id int Not null primary key, --�û�id
	U_pwd varchar(255) Not null, --����
	U_name nvarchar(50) Not null, --�û���
	U_gender nchar(1) null, --�Ա�
	U_header varchar(255), --�û�ͷ��URL
	U_credit int Not null, --���õȼ�
	U_Tele int null, --��ϵ�绰
	U_Email varchar(255) --�����ַ
);

--��ҵ�û���
CREATE TABLE Enterprise_Users (
	U_id int Not null primary key, --��ҵ�û�id
	U_pwd varchar(255) Not null, --����
	U_name nvarchar(50) Not null, --��ҵ����
	U_info nvarchar(max), --��ҵ��Ϣ 
	U_addr nvarchar(255), --��ҵ��ַ
	U_validation int, --��ҵ��֤״̬
	U_Tele int null, --��ҵ��ϵ�绰
	U_Email varchar(255) --��ҵ��������
);

--�ضα�
CREATE TABLE Region(
	 Region_id	int not null primary key, --�ض�id
	 Province nvarchar(20) not null, --ʡ��
	 City nvarchar(20) not null, --����
	 County nvarchar(20) not null --��
);
 
--���ͱ�
 CREATE TABLE HouseType(
	 HType_id int not null primary key, --����id
	 HType_name varchar(255) not null, --�������ƣ�2��1����
	 Remark varchar(max) null --��ע
 );

--��ҵ�·���
CREATE TABLE House_Sell_Enterprise(
	H_id	int not null primary key, --����id
	U_id	int not null, --�û�id����ҵ��
	
	TotalNum	int, --����
	SelledNum	int, --������Ŀ
	Addr	varchar(255), --¥�̵�ַ
	Opening_date	varchar(20), --����ʱ�� 2016��6��24��
	Finish_date	varchar(20), --��סʱ��

	Pics	varchar(max), --��ԴͼƬ(images/.../pic1;images/.../pic2;)

	--4���ֶΰ�;�������һ���������Ϊ2��1��70ƽ�׵ķ��ݼ۸�Ϊ45000Ԫ/ƽ�ף��׸�34��--
	Price	varchar(255) not null, --�۸�(45000;20000;35000) 45000/m2
	Downpayment varchar(255), --�׸���34;54;39��
	MainType varchar(255), --��Ҫ���ͣ�1;1;2����2��1����70m2��2��1����86m2��3��1��90m2��
	Size varchar(255), --�����70;86;110��
	
	Region_id	int not null, --�ض�id
	HType_id	int not null, --����id
	Building_name nvarchar(255), --¥�����ƣ��̹�԰ɭ�ֳ��У�
	Developer_name nvarchar(255), --�����̣���ɽ�б̹�԰Ͷ�ʷ�����ѯ���޹�˾��
	Planning_num int, --�滮������200000��
	Parking_num int, --ͣ��λ��200000��
	Mana_fee float, --�����(4.5/ƽ��)
	Property_name nvarchar(255),--��ҵ��˾���̹�԰��ҵ��
	Greening_rate float, --�̻���(0.6��60%)
	Builtup_area float, --���������46000000��
	Lang_area float,--ռ�������13860000��


	HAuthenticity int not null, --��֤״̬
	Remark	varchar(max) null, --˵��
	foreign key(U_id) references Enterprise_Users(U_id),
	foreign key(Region_id) references Region(Region_id), --�ض����
	foreign key(HType_id) references HouseType(HType_id) --�������
);

--���ַ���(�����û�)
CREATE TABLE House_Sell_Secondhand(
	H_id	int not null primary key, --����id
	U_id	int not null, --�����û�id
	
	Price	float not null, --�۸�300.5��
	Pics	varchar(max), --��ԴͼƬ(images/.../pic1;images/.../pic2;)
	Region_id	int, --�ض�id
	HType_id	int not null, --����id
	Size	Float not null, --���
	HouseFloor	int, --¥��
	Decoration	int, --װ���������װ����װ...��
	Orientation	int, --����1~4��ʾ����������
	Community nvarchar(255),--С�������˼Ҷ��ڣ�
	Remark	varchar(max) null, --��ע˵��

	HAvailability int, --��Ч�ԣ��ѱ�����δ����ȣ�
	HAuthenticity int, --��ʵ�ԣ���֤״̬��

	foreign key(Region_id) references Region(Region_id), --�ض����
	foreign key(HType_id) references HouseType(HType_id) --�������
);


--���ݳ����(�����û�)
CREATE TABLE House_Sell_Rent(
	H_id	int not null primary key, --����id
	U_id	int not null, --�û�id

	Price	float not null, --����۸�(2800��
	Region_id	int not null, --�ض�id
	HType_id	int not null, --����id
	Size	float not null, --���
	HouseFloor	int not null, --¥��
	Decoration	int, --װ���������װ����װ...��
	Orientation	int, --����1~4��ʾ����������
	Community nvarchar(255),--С�������˼Ҷ��ڣ�
	Remark	varchar(max) null, --��ע˵��

	HAvailability int not null, --��Ч�ԣ��ѱ�����δ����ȣ�
	HAuthenticity int not null, --��ʵ�ԣ���֤״̬��

	foreign key(Region_id) references Region(Region_id),  --�ض����
	foreign key(HType_id) references HouseType(HType_id)  --�������
);


--����Ϣ��
CREATE TABLE House_Buy_Request(
	H_id	int not null primary key, --����Ϣid
	U_id	int not null, --�û�id
	HDate	varchar(20) not null, --�󹺷�������
	
	Pirce	float not null, --�����۸�230��
	Size	float not null, --�������

	Region_id	int not null, --�ض�id
	HType_id	int not null, --����id
	HouseFloor	int, --����¥��
	Decoration	int, --����װ���������װ����װ...��
	Orientation	int, --��������1~4��ʾ����������
	Remark	varchar(max) null, --��ע˵��

	HAvailability int not null, --��Ч�ԣ��ѱ�����δ����ȣ�
	HAuthenticity int not null, --��ʵ�ԣ���֤״̬��

	foreign key(Region_id) references Region(Region_id),  --�ض����
	foreign key(HType_id) references HouseType(HType_id)  --�������
);

--������Ϣ��
CREATE TABLE House_Buy_Rent(
	H_id	int not null primary key, --������Ϣid
	U_id	int not null, --�û�id
	H_Date	varchar(20) not null, --���ⷢ������
	
	Pirce	float not null, --�������⣨2800��
	Size	float not null, --�������

	Region_id	int not null, --�ض�id
	HType_id	int not null, --����id
	HouseFloor	int, --����¥��
	Decoration	int, --����װ���������װ����װ...��
	Orientation	int, --��������1~4��ʾ����������
	Remark	varchar(max) null, --��ע˵��

	HAvailability int not null, --��Ч�ԣ��ѱ�����δ����ȣ�
	HAuthenticity int not null, --��ʵ�ԣ���֤״̬��

	foreign key(Region_id) references Region(Region_id),  --�ض����
	foreign key(HType_id) references HouseType(HType_id)  --�������
);

--�ղر�
CREATE TABLE Colletion (
	U_id int Not null ,	--�û�id
	H_id int Not null , --����id�������
	C_Type int Not null, --�ղ����ͣ��·������ַ��������������󹺱�
	primary key(U_id, H_id, C_Type), --�������û�id,����id,�ղ����ͣ�
	foreign key(U_id) references Users(U_id) --�û�id���
);

--���۱�
CREATE TABLE Comment(
	U_id int Not null ,
	H_id int Not null ,--����id�������
	C_Type int Not null, --�������ͣ��·������ַ������⡢���⡢��...��
	Comm_comment nvarchar(1024) not null, --��������
	primary key(U_id,H_id,C_Type), --����
	foreign key(U_id) references Users(U_id)
);

--����Ա��Ϣ��
CREATE TABLE Administrator(
	Admin_id varchar(20) not null primary key, --����Ա�˺�
	Admin_pwd varchar(32) not null, --����
	Admin_name varchar(20) not null, --����Ա����
	Admin_Tele int, --����Ա�绰
	Admin_Email varchar(255) --����Ա����
);

--����
CREATE TABLE Advertisement(
	Ad_id	int	not null primary key, --���id
	U_id	int	null, --���������û�id�����˻���ҵ���������
	U_type	int null, --�������������û��Ǹ��˻�����ҵ
	Ad_content	varchar(max) not null, --�������
	Ad_cost int	not null, --��滨��
	Ad_date	varchar(20) null, --ʱ�䣨2016��6��24�գ�
);

--����������id����id���������ͣ�����id��
--���ױ�
CREATE TABLE Transactions(
	Usell_id	int not null, --�����û�id
	Ubuy_id	int not null, --���û�id
	
	Trans_Type int Not null, --�������ͣ��·������ַ������⡢���⡢��...��
	H_id int not null, --����id

	Trans_date varchar(10) not null
	primary key(Usell_id, Ubuy_id, Trans_Type, H_id),
	foreign key(Ubuy_id) references Users(U_id),
);
