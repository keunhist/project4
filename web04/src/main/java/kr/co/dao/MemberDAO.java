package kr.co.dao;

import java.util.List;

import kr.co.vo.MemberVO;

public interface MemberDAO {
	
	// 회원목록
	public List<MemberVO> memberList(MemberVO vo) throws Exception;
	
	// 회원가입
	public void register(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	//회원상세보기 -> sql.selectONe memberMapper.memberDetail(MemberVO) MemberVO
	public void memberDetail(MemberVO vo) throws Exception;
	
	// 회원정보 수정
	public void memberUpdate(MemberVO vo)throws Exception;
	
	// 회원 탈퇴
	public void memberDelete(MemberVO vo)throws Exception;
	
	// 패스워드 체크
	public int passChk(MemberVO vo) throws Exception;
	
	// 아이디 중복체크
	public int idChk(MemberVO vo) throws Exception;
}
