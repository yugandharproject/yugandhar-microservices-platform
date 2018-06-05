package com.yugandhar.msp.bootapplication;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
//import org.springframework.boot.builder.SpringApplicationBuilder;
//import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jms.annotation.EnableJms;
import org.springframework.scheduling.annotation.EnableAsync;


/**
 * This is the primary boot application for Yugandhar Microservices platform application
 * @author Yugandhar
 * @version 2.0
 * @since 2.0
 * 
 */

@SpringBootApplication
@ComponentScan({"com.yugandhar.*"})
@EntityScan({"com.yugandhar.*"})
@EnableJpaRepositories({"com.yugandhar.*"})
@EnableCaching
@EnableAspectJAutoProxy
@EnableJms
@EnableAsync
public class YugandharMsplatformApplication {
//public class YugandharBootProjectApplication extends SpringBootServletInitializer {
	public static void main(String[] args) {
		SpringApplication.run(YugandharMsplatformApplication.class, args);
	}
	
	}
