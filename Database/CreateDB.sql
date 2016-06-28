if exists(select * from sysdatabases where name='Realestate')
drop database Realestate

create database Realestate
On
(
/*--�����ļ��ľ�������--*/
    name=Realestate_data,  -- �������ļ����߼�����
    filename='E:\javaweb\Database\Realestate_data.mdf', -- �������ļ�����������
    size=10, --�������ļ��ĳ�ʼ��С
    maxsize=100, -- �������ļ����������ֵ
    filegrowth=15%--�������ļ���������
)
log on
(
/*--��־�ļ��ľ�������,����������ͬ��--*/
    name=Realestate_log,
    filename='E:\javaweb\Database\Realestate_log.ldf',
    size=2,
    filegrowth=10%
);