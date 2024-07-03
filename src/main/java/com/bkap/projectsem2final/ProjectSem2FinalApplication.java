package com.bkap.projectsem2final;

import com.bkap.projectsem2final.service.sendmail.EmailSender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;

@SpringBootApplication
public class ProjectSem2FinalApplication {

//    @Autowired
//    private EmailSender emailSender;

    public static void main(String[] args) {
        SpringApplication.run(ProjectSem2FinalApplication.class, args);
    }

//    @EventListener(ApplicationReadyEvent.class)
//    public void sendMail() {
//        emailSender.sendMail("nguyenvannam10a1cmb@gmail.com",
//                "Test mail",
//                "hi Nam");
//    }

}
