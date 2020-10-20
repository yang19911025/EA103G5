package com.members.controller;


import java.io.*;
import java.util.*;
import java.net.*;

public class smsSending{

	private HttpURLConnection sms_gw = null;
	public smsSending(){	
	}

	private void SendSMS(StringBuilder sb,String mphone){
		try{			
			// 設定變數
			StringBuffer MSGData = new StringBuffer();
			
			// 設定參數
			String username = "yang1025";	// 帳號
			String password = "0987323020";		// 密碼
			String mobile = mphone;	// 電話
			String message = sb.toString();	// 簡訊內容	

			MSGData.append("username="+username);
			MSGData.append("&password="+password);
			MSGData.append("&mobile="+mobile);
			MSGData.append("&message=");
			MSGData.append(UrlEncode(message.toString().getBytes("big5")));
			SendToGW(MSGData.toString());
		}
		catch(Exception e){ 
			System.out.println("程式錯誤!"); 
		} 
	}

	// 傳送至 TwSMS API server
    private boolean SendToGW(String post)
    {
        try {
            URL url = new URL("http://api.twsms.com/json/sms_send.php");
            sms_gw = (HttpURLConnection)url.openConnection();
            sms_gw.setDoInput(true);
            sms_gw.setDoOutput(true);
            sms_gw.setUseCaches(false);
            sms_gw.setRequestMethod("POST");
            
            DataOutputStream dos = new DataOutputStream(sms_gw.getOutputStream());
            dos.writeBytes(post);
            dos.flush();
            dos.close();
            BufferedReader br = new BufferedReader(new InputStreamReader(sms_gw.getInputStream()));
            String strResponse = "";
            String readLine;
            while ((readLine = br.readLine()) != null) {
                strResponse += readLine;
            }
            br.close();
			System.out.println("回傳碼:" + strResponse);
            return true;
        }
        catch (Exception e) {
            System.out.println("無法連接 TwSMS API Server!"); 
            return false;
        }
    }

	// UrlEncode Function
    private String UrlEncode(byte[] src){
        byte[] ASCIIMAP =
            {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
        int pivot = 0;
        byte[] data = new byte[src.length * 3];
        for(int i = 0; i < src.length; i++){
            if(src[i] == 0){
                data[pivot++] = 37;
                data[pivot++] = 48;
                data[pivot++] = 48;
            }

            else if(src[i] < 0){
                data[pivot++] = 37;
                data[pivot++] = ASCIIMAP[(src[i] >> 4) & 0x0f];
                data[pivot++] = ASCIIMAP[src[i] & 0x0f];
            }
            else{
                char cc = (char)src[i];

                if(Character.isLetterOrDigit(cc)){
                    data[pivot++] = src[i];
                }
                else if(cc == ' '){
                    data[pivot++] = 43;
                }
                else if(cc == '.' || cc == '-' || cc == '*' || cc == '_'){
                    data[pivot++] = src[i];
                }
                else{
                    data[pivot++] = 37;
                    data[pivot++] = ASCIIMAP[(src[i] >> 4) & 0x0f];
                    data[pivot++] = ASCIIMAP[src[i] & 0x0f];
                }
            }
        }
        if(pivot > 0) return new String(data, 0, pivot);
        return "";
    }

    void Process(StringBuilder sb,String mphone){
		SendSMS(sb,mphone);
    }

    public static void main(String[] args){
    
    	
    }
}
