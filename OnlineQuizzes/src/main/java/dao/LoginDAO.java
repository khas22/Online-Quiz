package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.LoginModel;

public class LoginDAO {
	public boolean validate(LoginModel loginModel) throws ClassNotFoundException {
        boolean status = false;
        Connection conn = SingletonConnection.getConnection();

        try {
            PreparedStatement ps = conn.prepareStatement("select * from user where username = ? and password = ? and role = 'admin'");
            ps.setString(1, loginModel.getUsername());
            ps.setString(2, loginModel.getPassword());
            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
        	e.printStackTrace();
        }
        return status;
    }
}
