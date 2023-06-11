/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author Barokah
 */
public class md5hash {
    public String getMd5(String input) {
        try {
 
            // Static getInstance method is called with hashing MD5
            MessageDigest md = MessageDigest.getInstance(input).getInstance("MD5");
 
            // digest() method is called to calculate message digest
            // of an input digest() return array of byte
            byte[] messageDigest = md.digest(input.getBytes());
 
            // Convert byte array into signum representation
            BigInteger no = new BigInteger(1, messageDigest);
 
            // Convert message digest into hex value
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        }
 
        // For specifying wrong message digest algorithms
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
    
    public String encryptPasswordMD5(String vpassword){
    String encPass=null;
    try{
       MessageDigest digest=MessageDigest.getInstance("MD5");
       digest.update(vpassword.getBytes(),0,vpassword.length());
       encPass=new BigInteger(1,digest.digest()).toString(16);
    }
    catch(Exception e){
       e.printStackTrace();
    }
      return encPass;
    }
    
//    public static String main(String pass) throws NoSuchAlgorithmException{
//        String s = pass;
//        
//        return getMd5(s);
//    }
}
