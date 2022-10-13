package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication
@RestController
public class DemoApplication {

	@GetMapping("/test")
	public String home() {
		return "Hello Docker World";
	}
	
	@GetMapping("/home")
	public String welcome() {
		return "welcome";
	}
	
	@GetMapping("/hi")
	public String hi() {
		return "HI!!!!";
	}
	
	@GetMapping("/mdits")
	public String vasantha() {
		return "mdits";
	}
	
	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
