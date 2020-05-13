package com.claim.SampleName;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;



@SpringBootApplication
@ComponentScan(basePackages="com.claim")

@ComponentScan(basePackages="com.claim")
public class reactWithMysql {

	public static void main(String[] args) {
		SpringApplication.run(reactWithMysql.class, args);
	}

}

