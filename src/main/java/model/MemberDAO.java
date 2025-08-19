package model;

import util.DBUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {

    public void insertMember(MemberDTO member) {
        String sql = "INSERT INTO member(username, userid, password, email) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, member.getUsername());
            pstmt.setString(2, member.getUserid());
            pstmt.setString(3, member.getPassword());
            pstmt.setString(4, member.getEmail());
            pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<MemberDTO> getAllMembers() {
        List<MemberDTO> list = new ArrayList<>();
        String sql = "SELECT * FROM member";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                MemberDTO member = new MemberDTO();
                member.setUsername(rs.getString("username"));
                member.setUserid(rs.getString("userid"));
                member.setPassword(rs.getString("password"));
                member.setEmail(rs.getString("email"));
                list.add(member);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
