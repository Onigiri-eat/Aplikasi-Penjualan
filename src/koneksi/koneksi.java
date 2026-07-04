/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.*;
/**
 *
 * @author ACER
 */
public class koneksi {
    private Connection koneksi;
    public Connection connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("berhasil konek");
        }catch(ClassNotFoundException ex){
            System.out.println("gagal konek"+ ex);
        }
        String url = "jdbc:mysql://localhost/penjualandb";
        try{
            koneksi = DriverManager.getConnection(url,"root","");
            System.out.println("Berhasil konek db");
        }catch(SQLException ex){
            System.out.println("gagal konek db"+ ex);
        }
        return koneksi;
    }
}

