package co.yedam.puppy.member.service;

import co.yedam.puppy.vo.MemberVO;

public interface MemberService {

	// 지혜
	MemberVO memberLogin(MemberVO vo); // 로그인 처리
	int memberInsert(MemberVO vo); // 멤버 등록
	boolean isMemberIdcheck(String id); // 회원가입 시 아이디 중복체크
	
	//경아
	MemberVO memberSelectOne(MemberVO vo);// 내정보단건조회 
	int memberUpdate(MemberVO vo); // 내정보수정
	int memberDelete(String id); // 내정보삭제(탈퇴)
	
	//현지
	int kakaoJoinCheck(MemberVO vo); //카카오로 회원가입했는 이력있는지 확인
}
