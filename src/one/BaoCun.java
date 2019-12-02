package one;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BaoCun
 */
@WebServlet("/BaoCun")
public class BaoCun extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaoCun() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		int exams = Integer.parseInt(request.getParameter("exams"));
		String name = request.getParameter("name");
		StringBuffer banswers = new StringBuffer() ;
		for(int i=0;i<4;i++) {
			if (request.getParameter("opt"+(i+1))==null||request.getParameter("opt"+(i+1))=="") {
				banswers.append("X") ;
			}else {
				banswers.append("   "+i+"¡¢");
				banswers.append(request.getParameter("opt"+(i+1))) ;
				
			}
			
			System.out.println(banswers);
		}
		for(int i=0;i<4;i++) {
			if (request.getParameter("file"+(i+1))==null||request.getParameter("file"+(i+1))=="") {
				banswers.append("X") ;
			}else {
				banswers.append("   "+i+"¡¢");
				banswers.append(request.getParameter("file"+(i+1))) ;
			
			}
			
			System.out.println(banswers);
		}
		for(int i=0;i<2;i++) {
			if (request.getParameter("DaTi"+(i+1))==null||request.getParameter("DaTi"+(i+1))=="") {
				banswers.append("X");
			}else {
				banswers.append("   "+i+"¡¢");
				banswers.append(request.getParameter("DaTi"+(i+1))) ;
				
			}
			
			System.out.println(banswers);
		}
		String  answers = new String(banswers) ;

		Mysql mysql = new Mysql();
		 mysql.biao2_insert(exams, name, answers);
		 response.sendRedirect("JieShu.jsp");
	}

}
