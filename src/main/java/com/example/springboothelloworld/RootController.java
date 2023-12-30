package com.example.springboothelloworld;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RootController {
     @GetMapping(value = "/root")
    public String getRoot()
    {
        return "Greeting from root controller";
    }
}
