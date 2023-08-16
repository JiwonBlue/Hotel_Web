package everest.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.GetMapping;

@RequestMapping("everest")
@Controller
public class JpaMainController {

    // @Autowired
    // privateggege

    @GetMapping("main/form.do")
    public String main() {
        return "project/main/form";
    }

    @GetMapping("main/footer.do")
    public String footer() {
        return "project/main/footer";
    }

    @GetMapping("main/header.do")
    public String header() {
        return "project/main/header";
    }

    // @GetMapping("login.do")
    // public String login(){
    // return "/project/login";
    // }
    // @GetMapping("login.do")
    // public String login(){
    // return "/project/login";
    // }
}
