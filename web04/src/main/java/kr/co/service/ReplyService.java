package kr.co.service;

import java.util.List;

import kr.co.vo.ReplyVO;

public interface ReplyService {
	//��� ��ȸ -> sql.selectList   replyMapper.readReply
	public List<ReplyVO> readReply(int bno) throws Exception;
		
	//��� �ۼ� ->  sql.insert   replyMapper.writeReply
	public void writeReply(ReplyVO vo) throws Exception;
		
	//��� ���� ->  sql.update  replyMapper.updateReply
	public void updateReply(ReplyVO vo) throws Exception;
		
	//��� ���� ->  sql.delete  replyMapper.deleteReply
	public void deleteReply(ReplyVO vo) throws Exception;
		
	//���õ� ��� �� ���� ->  sql.selectOne   replyMapper.selectReply
	public ReplyVO selectReply(int rno) throws Exception;
}

