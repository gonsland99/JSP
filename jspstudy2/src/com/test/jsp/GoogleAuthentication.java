package com.test.jsp;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class GoogleAuthentication extends Authenticator {
	PasswordAuthentication passAuth;
    
    public GoogleAuthentication(){
        passAuth = new PasswordAuthentication("byunggon.kim.dev", "lwwlrklnluwsaxha");
    }
 
    public PasswordAuthentication getPasswordAuthentication() {
        return passAuth;
    }
}

