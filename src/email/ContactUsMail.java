package email;


import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@WebServlet("/ContactUsMail")
public class ContactUsMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ContactUsMail() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		
		
		//==============MAIL SENDING CODE===================
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String number = request.getParameter("number");
		String textarea = request.getParameter("message");
		
		String to[] = new String[2]; 
		to[0] = "kanishkk40@gmail.com";
		to[1] = "dominic@apriorieducation.org";

        // Sender's email ID needs to be mentioned
        String from = "info.cogitoartgallery@gmail.com";

        // Assuming you are sending email from through gmails smtp
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();

        // Setup mail server
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

        // Get the Session object.// and pass username and password
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {

                return new PasswordAuthentication("info.cogitoartgallery@gmail.com", "Metahuman@2020");

            }

        });

        // Used to debug SMTP issues
        session.setDebug(true);

        try {
        	
        	response.sendRedirect("Final.html");
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.BCC, new InternetAddress(to[0]));
            message.addRecipient(Message.RecipientType.BCC, new InternetAddress(to[1]));

            // Set Subject: header field
            message.setSubject(name+ " just left a message");

            // Now set the actual message
            message.setText("NAME:  "+name+"\n\nCONTACT NUMBER:  "+number+"\n\nEMAIL:  "+email+"\n\nSUBJECT:  "+subject+"\n\nMESSAGE:  "+textarea);

            System.out.println("sending...");
            // Send message
            Transport.send(message);
            System.out.println("Sent message successfully....");
    		
            
           
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
	
	}

}
