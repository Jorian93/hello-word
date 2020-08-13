package com.jorian.demo.helloword;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: jorian
 * @date: 2019/11/25 17:08
 * @description: this is  description for the class
 */
@RequestMapping("/")
@RestController
public class HellowController {

    public String sayHello(){
        return "hello 2 b !";
    }

}
