/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DbContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.TaiKhoan;
/**
 *
 * @author ADMIN
 */
public class TaiKhoanDAO {
     Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    public TaiKhoan checkLogin(String tendangnhap,String matkhau) {
        TaiKhoan kq=null;
        String sql = "select * from TaiKhoan where tendangnhap=? and matkhau=?";
        conn = DbContext.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,tendangnhap);
            ps.setString(2,matkhau);
            rs = ps.executeQuery();
            while (rs.next()) {
                kq=new TaiKhoan(rs.getString(1), rs.getString(2));
            }
        } catch (Exception ex) {
            System.out.println("Loi:" + ex.toString());
        }
        return kq;
    }
    public boolean Update(TaiKhoan tk){
        String sql = "update TaiKhoan set matkhau=? where tendangnhap=?";
        conn = DbContext.getConnection();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, tk.getMatkhau());
            ps.setString(2, tk.getTendangnhap());
            
            int kq = ps.executeUpdate();
            if (kq > 0) {
                return true;
            }
        } catch (Exception ex) {
            System.out.println("Loi:" + ex.toString());
        }
        return false;
    }
    public static void main(String[] args){
        TaiKhoanDAO tkDAO=new TaiKhoanDAO();
        TaiKhoan tk=tkDAO.checkLogin("ntthuy", "ntthuy90");
        if(tk!=null){
            System.out.println("thanh cong");
        }
        else{
            System.out.println("that bai");
        }
    }
}
