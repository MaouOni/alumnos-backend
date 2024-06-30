package com.example.alumnosbackend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories(basePackages = "com.example.alumnosbackend.repository")
@EntityScan(basePackages = "com.example.alumnosbackend.entity")
public class AlumnosBackendApplication {
    public static void main(String[] args) {
        SpringApplication.run(AlumnosBackendApplication.class, args);
    }
}
