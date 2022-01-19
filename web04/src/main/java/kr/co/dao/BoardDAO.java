package kr.co.dao;

import java.util.List;
import java.util.Map;

import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

public interface BoardDAO {
	//�Խñ� �ۼ� -> sql.insert(boardVO)
	public void write(BoardVO boardVO) throws Exception;
	
	//�Խù� ��� -> sql.listPage(sc) boardVO
	public List<BoardVO> list(SearchCriteria scri) throws Exception;
	
	//�Խñ� �� ���� -> sql.listCount(sc) count
	public int listCount(SearchCriteria scri) throws Exception;
	
	//�Խñ� ���� -> sql.read(bno) boardVO
	public BoardVO read(int bno) throws Exception;	
	
	//�Խñ� ����  -> sql.update(boardVO)
	public void update(BoardVO boardVO) throws Exception;
	
	//�Խñ� ����  -> sql.delete(bno)
	public void delete(int bno) throws Exception; 
	
	//÷������ ���ε� -> sql.insertFile(hashMap)
	public void insertFile(Map<String, Object> map) throws Exception;
	
	//÷������ ��ȸ  -> sql.selectFileList(bno) hashMap
	public List<Map<String, Object>> selectFileList(int bno) throws Exception;
	
	//÷������ �ٿ�ε�  -> sql.selectFileInfo(hashMap) hashMap
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
	
	//÷������ ����  -> sql.updateFile(hashMap)
	public void updateFile(Map<String, Object> map) throws Exception;
	
	//�Խñ��� ��ȸ�� : �Խñ� ���⸦ ���� ��� �ش� ���� hit�� ����  -> sql.boardHit(bno)
	public void boardHit(int bno) throws Exception;
}
