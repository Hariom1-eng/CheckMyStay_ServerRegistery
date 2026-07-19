package com.ServiceRegistry;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication

@EnableEurekaServer     //This Helps to Enable the Eureka Server
public class MicroservicesProjectServiceRegisteryApplication {

	public static void main(String[] args) {
		SpringApplication.run(MicroservicesProjectServiceRegisteryApplication.class, args);
	}

}
