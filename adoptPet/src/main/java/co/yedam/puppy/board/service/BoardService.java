package co.yedam.puppy.board.service;

import java.util.List;

import co.yedam.puppy.vo.BoardVO;
import co.yedam.puppy.vo.FilesVO;


public interface BoardService {
	// 봉사활동 후기 게시판
	List<BoardVO> volReviewSelectList(int currentPage, int startRow, int pageSize); // 봉사후기 게시판 전체조회 목록
	int volReviewCount(); // DB에 있는 봉사후기 list 글 갯수 확인하여 페이징 처리할때 사용
	BoardVO volReviewSelectOne(BoardVO vo); // 단건조회
	int volReviewInsert (BoardVO vo); // 글쓰기
	int volReviewUpdate (BoardVO vo); // 수정
	int volReviewDelete (int boardNo); // 삭제
	List<BoardVO> volReviewSearchList(String key, String val); // 검색	

	//공지게시판
	List<BoardVO> boardSelectList(int currentPage, int startRow, int pageSize);// 공지 목록
	int boardCount();//DB공지 갯수 확인
	BoardVO boardSelect(BoardVO vo);//공지상세보기
	BoardVO boardSelectOne(BoardVO vo);//공지 단건 조회
	int noticeInsert(BoardVO vo);//글쓰기
	int noticeUpdate(BoardVO vo);//수정
	int noticeDelete(BoardVO bvo,FilesVO fvo);//삭제
	List<BoardVO> noticeSerarchList(String key, String val);//검색
	
	//입양후기 게시판
	List<BoardVO> adoptReviewSelectList(int currentPage, int startRow, int pageSize);//후기게시판 목록
	int apodtReviewCount();//DB공지 갯수 확인
	BoardVO adoptReviewSelect(BoardVO bvo,FilesVO fvo);//후기 상세보기
	BoardVO adoptReviewSelectOne(BoardVO vo);//후기 단건 조회
	int adoptReviewInsert(BoardVO bvo,FilesVO fvo);//후기 글쓰기
	int adoptReviewUpdate(BoardVO bvo,FilesVO fvo);//수정
	int adoptReviewDelete(BoardVO bvo,FilesVO fvo);//삭제
	List<BoardVO> adoptReviewSearchList(String key, String val);//검색
	
	//문의게시판
	List<BoardVO> qnaBoardSelectList(int currentPage, int startRow, int pageSize);//문의게시판 목록
	BoardVO qnaBoardSelect(BoardVO vo);//문의글 상세보기
	int qnaBoardInsert(BoardVO vo);//문의 글쓰기
	int qnaBoardUpdate(BoardVO vo);//문의 글 수정
	int qnaBoardDelete(int boardNo);//문의 글 삭제 
	List<BoardVO> qnaBoardSearchList(String key, String val);//검색
	int qnaBoardCount();// 문의게시판 글 개 수 확인 
	
}
