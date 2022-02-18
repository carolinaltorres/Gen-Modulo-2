package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hallo")
public class HelloController {

	@GetMapping
	public String hello() {
		return "Hello Generation!!! Essa semana eu pretendo aprender mais habilidades tecnicas";
	}
}
