package co.yedam.puppy.qnaBoard.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.puppy.board.service.BoardService;
import co.yedam.puppy.board.service.BoardServiceImpl;
import co.yedam.puppy.comm.Command;
import co.yedam.puppy.vo.BoardVO;

public class QnaBoardUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 문의글 수정
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		
		String no = request.getParameter("boardNo");
		vo.setBoardNo(Integer.parseInt(no));
		
		vo = dao.qnaBoardSelect(vo);
		
		request.setAttribute("BoardVO", vo);
		
		return "qna/qnaBoardList";
	}

}
