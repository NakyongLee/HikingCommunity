package board2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/boardPost2")
public class BoardPostServlet2 extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		BoardMgr2 bMgr = new BoardMgr2();
		bMgr.insertBoard(request);
		response.sendRedirect("board2/list.jsp");
	}
}