package controller;

import model.MemberDAO;
import model.MemberDTO;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        MemberDTO member = new MemberDTO();
        member.setUsername(username);
        member.setUserid(userid);
        member.setPassword(password);
        member.setEmail(email);

        MemberDAO dao = new MemberDAO();
        dao.insertMember(member);

        response.sendRedirect("memberList.jsp");
    }
}
