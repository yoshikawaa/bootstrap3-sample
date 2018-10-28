package io.github.yoshikawaa.sample.app.gettingstart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/getting-start")
public class GettingStartController {

    @GetMapping
    public String index() {
        return "getting-start/index";
    }
    
    @GetMapping("cdn")
    public String cdn() {
        return "getting-start/cdn";
    }
    
    @GetMapping("resources")
    public String resources() {
        return "getting-start/resources";
    }
    
    @GetMapping("webjars")
    public String webjars() {
        return "getting-start/webjars";
    }
}
