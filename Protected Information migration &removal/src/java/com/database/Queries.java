/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author ganta
 */
public class Queries {
    
    public static ResultSet r=null;
    
    public static ResultSet getExecuteQuery(String query){
        try{
         Connection con=DBConnection.getConnection();
         Statement st=con.createStatement();
         r=st.executeQuery(query);
         
        }catch(Exception e){
            System.out.println(e);
        }
        return r;
    }    
  public static int i=0;
     public static int getExecuteUpdate(String query){
        try{
         Connection con=DBConnection.getConnection();
         Statement st=con.createStatement();
         i=st.executeUpdate(query);
         
        }catch(Exception e){
            System.out.println(e);
        }
        return i;
    }    
}
