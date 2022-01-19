package kr.co.vo;

import java.util.Date;
//���� ������ ��ȣ, ��ü �� ��, �� �������� ���� ��, �� Ŭ�� �� ��������, ������������ȣ, ��������������ȣ, ��������������, ��������������
// �������������� -> Criteria, pageMaker
//���� ��������ȣ, �� �������� ���� ��, ���� �������� ù ���� �� �� ��ȣ, ���� �������� ������ �� �۹�ȣ
//AOP(�����������α׷���) : �ְ���(�ֱ��)�� �����ϵ��� ����� �и��Ͽ� ���α׷����� �ϵ��� �ϴ� ��
//�ֱ�� : ȸ�����(Member) , �Խ��Ǳ��(Board), ��۱��(Reply) ,��ǰ���(Product), �Ǹ�(Pay) , ��ٱ���(Cart)
//�ֱ���� �������� �����ͺ��̽��� ���� �� ����, �α�, �Ķ���� ������ �ʿ��ϹǷ� �̷��� ����� �ΰ������� �߰��ǰų� ����� ������ �����Ƿ� ������ Ŭ������ ���·� ���α׷����ϸ�, 
//�ֱ�ɿ� �����ϵ��� �Ͽ� ���������� ������ �����ϵ��� �ϴ� ���α׷���
//�ֱ��+�������=>�ϳ��� Ŭ������ ��ٺ��� ��������� �߰��ϰų� �����Ϸ��� �ϳ��� Ŭ�����ȿ� ��ұ� ������ ������ �����ؾ���
//�ֱ��+�������=>���� ���� Ŭ������ ������ �ָ� , ��������� ���� Ŭ������ �� �߰��ϰų�, �ش� ����Ŭ������ �����ϸ�� -> ���ȭ
//�˻����, �˻��� -> SearchCriteria
public class BoardVO {
	private int bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int hit;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer + ", regdate="
				+ regdate + ", hit=" + hit + "]";
	}
	
}
