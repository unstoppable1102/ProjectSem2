package com.bkap.projectsem2final.service.sendmail;

import lombok.RequiredArgsConstructor;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EmailSender {


    private final JavaMailSender emailSender;

    public void sendMail(String toEmail, String subject, String body) {
//        SimpleMailMessage message = new SimpleMailMessage();
//        message.setFrom("minh14091997@gmail.com");
//        message.setTo(toEmail);
//        message.setText(body);
//        message.setSubject(subject);
//
//        emailSender.send(message);
//
//        System.out.println("Email send ok");
    }
}
