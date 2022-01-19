package kr.co.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {
		
		@Inject
		private SqlSession sql;
		
		//�Խñ� �ۼ� -> sql.insert(boardVO)
		@Override
		public void write(BoardVO boardVO) throws Exception {
			sql.insert("boardMapper.insert", boardVO);
		}
		
		//�Խù� ��� -> sql.listPage(sc) boardVO
		@Override
		public List<BoardVO> list(SearchCriteria scri) throws Exception{
			return sql.selectList("boardMapper.listPage", scri);
		}
		
		//�Խñ� �� ���� -> sql.listCount(sc) count
		@Override
		public int listCount(SearchCriteria scri) throws Exception{
			return sql.selectOne("boardMapper.listCount", scri);
		}
		
		//�Խñ� ���� -> sql.read(bno) boardVO
		@Override
		public BoardVO read(int bno) throws Exception{
			return sql.selectOne("boardMapper.read", bno);
		}	
		
		//�Խñ� ����  -> sql.update(boardVO)
		@Override
		public void update(BoardVO boardVO) throws Exception{
			sql.update("boardMapper.update", boardVO);
		}
		
		//�Խñ� ����  -> sql.delete(bno)
		@Override
		public void delete(int bno) throws Exception{
			sql.delete("boardMapper.delete", bno);
		}
		
		//÷������ ���ε� -> sql.insertFile(hashMap)
		@Override
		public void insertFile(Map<String, Object> map) throws Exception{
			sql.insert("boardMapper.insertFile", map);
		}
	
		//÷������ ��ȸ  -> sql.selectFileList(bno) hashMap
		@Override
		public List<Map<String, Object>> selectFileList(int bno) throws Exception{
			return sql.selectList("boardMapper.selectFileList", bno);
		}
		
		//÷������ �ٿ�ε�  -> sql.selectFileInfo(hashMap) hashMap
		@Override
		public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception{
			return sql.selectOne("boardMapper.selectFileInfo", map);
		}
		
		//÷������ ����  -> sql.updateFile(hashMap)
		@Override
		public void updateFile(Map<String, Object> map) throws Exception {
			sql.update("boardMapper.updateFile", map);
		}
		
		//�Խñ��� ��ȸ�� : �Խñ� ���⸦ ���� ��� �ش� ���� hit�� ����  -> sql.boardHit(bno)
		@Override
		public void boardHit(int bno) throws Exception {
			sql.update("boardMapper.boardHit", bno);
		}
}
