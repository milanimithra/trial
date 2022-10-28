package edu.jfs.app.controller;

import java.util.Arrays;

import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.example.demo.model.Product;

@RestController
public class HomeService {


	RestTemplate rTemplate;
	@Bean
	@LoadBalanced
	public RestTemplate createRestTemplate() {
		 rTemplate= new RestTemplate();
		return rTemplate;
	}
	
	@GetMapping
	public String callHomeService() {
//		return "my home Service";
		//String str=rTemplate.getForObject("http://localhost:8080/", String.class);
		String str=rTemplate.getForObject("http://PRODUCTASMICROSERVICE/p", String.class);
		return str;
	}
	
	@GetMapping("/pp")
	public String callHomeServiceViaEureka() {

		return rTemplate.getForObject("http://PRODUCTASMICROSERVICE/p", String.class);
		
	}
	
	
}
