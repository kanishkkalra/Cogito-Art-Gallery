package mailcheck;

import java.util.*;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailCheck {
   public static void main(String[] args) {
	   

	           // Recipient's email ID needs to be mentioned.
	           String[] to = new String[3];
	           to[0] = "kanishk@apriorieducation.org";
	           to[1] = "kanishkk40@gmail.com";
	           to[2] = "kalrakanika23@gmail.com";

	           // Sender's email ID needs to be mentioned
	           String from = "kalrakanishk1997@gmail.com";

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

	                   return new PasswordAuthentication("kalrakanishk1997@gmail.com", "kk9810086634");

	               }

	           });

	           // Used to debug SMTP issues
	           session.setDebug(true);

	           try {
	               // Create a default MimeMessage object.
	               MimeMessage message = new MimeMessage(session);

	               // Set From: header field of the header.
	               message.setFrom(new InternetAddress(from));

	               // Set To: header field of the header.
	               message.addRecipient(Message.RecipientType.TO, new InternetAddress(to[0]));
	               message.addRecipient(Message.RecipientType.BCC, new InternetAddress(to[1]));
	               message.addRecipient(Message.RecipientType.BCC, new InternetAddress(to[2]));
	               

	               // Set Subject: header field
	               message.setSubject("This is the Test Mail");

	               // Now set the actual message
	               message.setText("This is a test mail sent using Java mail API");

	               System.out.println("sending...");
	               // Send message
	               Transport.send(message);
	               System.out.println("Sent message successfully....");
	           } catch (MessagingException mex) {
	               mex.printStackTrace();
	           }

	       }
}

	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
      
//      String to = "kanishkk40@gmail.com";
//
//     
//      String from = "kanishk@apriorieducation.org";
//      final String username = "kanishk@apriorieducation.org";
//      final String password = "DionysiaN@2014";
//      
//      String host = "smtp.gmail.com";
//
//      Properties props = new Properties();
//      props.put("mail.smtp.auth", "true");
//      props.put("mail.smtp.starttls.enable", "true");
//      props.put("mail.smtp.host", host);
//      props.put("mail.smtp.port", "587");
//
//      // Get the Session object.
//      Session session = Session.getInstance(props,
//      new javax.mail.Authenticator() {
//         protected PasswordAuthentication getPasswordAuthentication() {
//            return new PasswordAuthentication(username, password);
//         }
//      });
//
//      try {
//         // Create a default MimeMessage object.
//         Message message = new MimeMessage(session);
//
//         // Set From: header field of the header.
//         message.setFrom(new InternetAddress(from));
//
//         // Set To: header field of the header.
//         message.setRecipients(Message.RecipientType.TO,
//         InternetAddress.parse(to));
//
//         // Set Subject: header field
//         message.setSubject("Testing Subject");
//
//         // Now set the actual message
//         message.setText("Hello, this is sample for to check send "
//            + "email using JavaMailAPI ");
//
//         // Send message
//         Transport.send(message);
//
//         System.out.println("Sent message successfully....");
//
//      } catch (MessagingException e) {
//            throw new RuntimeException(e);
//      }
   
