package de.shevchuk.dockerimage;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping(value = "/hello", produces = "application/json")
    public String getHello() {
        return "avgu's API";
    }
}
