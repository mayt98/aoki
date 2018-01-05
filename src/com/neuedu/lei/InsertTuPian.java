package com.neuedu.lei;

import com.neuedu.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 * Created by ttc on 18-1-5.
 */
public class InsertTuPian {
    public static void main(String[] args) {
        String head="GS100000";
for(int i=1;i<53;i++){
    if(i<10){
        insertInto(head+"0"+i);
    }else{
        insertInto(head+i);
    }


}



    }
    public static void insertInto(String imageid){
        PreparedStatement ps=null;
        Connection conn=null;
        try {
            conn=DBUtil.connedDB();
            String sql=
                    "INSERT INTO aoki_goodimages VALUES(?,?,?,?,?,?,?,?,?)";
            ps=conn.prepareStatement(sql);
            ps.setString(1,imageid);
            ps.setString(2,imageid+"b001");
            ps.setString(3,imageid+"b002");
            ps.setString(4,imageid+"b003");
            ps.setString(5,imageid+"b004");
            ps.setString(6,imageid+"s001");
            ps.setString(7,imageid+"s002");
            ps.setString(8,imageid+"s003");
            ps.setString(9,imageid+"s004");
            int a=ps.executeUpdate();
            System.out.println("the result is"+a);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBUtil.releaseDB(ps);
        }
    }

}
