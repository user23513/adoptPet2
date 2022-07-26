package co.yedam.puppy.qnaBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.puppy.board.service.BoardService;
import co.yedam.puppy.board.service.BoardServiceImpl;
import co.yedam.puppy.comm.Command;
import co.yedam.puppy.vo.BoardVO;

public class QnaBoardSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 문의글 상세보기
		BoardService Dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		
		String no = request.getParameter("boardNo");
		vo.setBoardNo(Integer.valueOf(request.getParameter("no")));
		vo = Dao.qnaBoardSelect(vo);
		
		request.setAttribute("BoardVO", vo);
		
		return "qna/qnaBoardSelect";
	}

}
