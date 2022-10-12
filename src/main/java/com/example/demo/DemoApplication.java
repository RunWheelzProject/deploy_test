package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
	
	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
