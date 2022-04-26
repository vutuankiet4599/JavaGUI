/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
package QuanLyDanCu;
import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class suadoi {

    public static List<sohokhau> dssohokhau() {

        List<sohokhau> dssohokhau = new ArrayList<>();
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;

        try {
            //Lay tat ca danh sach so ho khau

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "");

            //Tao form truy van
            String sql = "SELECT * FROM sohokhau ORDER BY hokhau";
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                sohokhau shk = new sohokhau(rs.getString("tenchuho"),
                        rs.getString("hokhau"),
                        rs.getString("diachi"),
                        rs.getInt("nhankhau"),
                        rs.getString("ghichu"),
                        rs.getString("ngaycap"));
                dssohokhau.add(shk);
            }
        } catch (SQLException ex) {
            Logger.getLogger(suadoi.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException ex) {
                    Logger.getLogger(suadoi.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(suadoi.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        //Ket thuc

        return dssohokhau;
    }

    public static List<nguoidan> dsnguoidan() {

        List<nguoidan> dsnguoidan = new ArrayList<>();
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;

        try {
            //Lay tat ca danh sach so ho khau

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "");

            //Tao form truy van
            String sql = "SELECT * FROM nguoidan ORDER BY `hokhau` AND !`chuho`";
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                nguoidan nd = new nguoidan(rs.getString("hoten"),
                        rs.getString("gioitinh"),
                        rs.getString("ngaysinh"),
                        rs.getString("noisinh"),
                        rs.getString("diachitt"),
                        rs.getString("nghenghiep"),
                        rs.getString("cccd"),
                        rs.getString("ngaycap"),                                               
                        rs.getInt("chuho"),
                        rs.getString("quanhechuho"),
                        rs.getString("hokhau"), 
                        rs.getString("ngaychuyendi"),
                        rs.getString("noichuyendi"),
                        rs.getString("ghichu"));
                dsnguoidan.add(nd);
            }
        } catch (SQLException ex) {
            Logger.getLogger(suadoi.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException ex) {
                    Logger.getLogger(suadoi.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(suadoi.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
            if (rs != null){
                try {
                    rs.close();
                } catch (SQLException ex) {
                    Logger.getLogger(suadoi.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        //Ket thuc

        return dsnguoidan;
    }
    
}
