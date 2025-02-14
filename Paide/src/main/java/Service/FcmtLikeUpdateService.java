package Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Inter.Command;
import Model.CommunityDAO;
import Model.MemberDTO;

public class FcmtLikeUpdateService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[FcmtLikeUpdateService]");

		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
	    session.getAttribute("info");
	    
	    String m_id = info.getM_id();
		
		// int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		int fcmt_seq = Integer.parseInt(request.getParameter("fcmt_seq"));
		
		
		// System.out.println(article_seq);
		System.out.println(fcmt_seq);
		System.out.println(m_id);
		
		CommunityDAO dao = new CommunityDAO();
		dao.Pflikes(fcmt_seq);
		dao.addfLikeInfo(fcmt_seq, m_id);
		
		
		int like = dao.select_flike(fcmt_seq);
		System.out.println("FcmtLikeUpdateService�� like ���� : " + like);
		response.setContentType("application/x-json; charset=utf-8");
		response.getWriter().print(like);
		
		
		return null;
		//return "ViewBoard.jsp?article_seq=" + article_seq;
	}

}
