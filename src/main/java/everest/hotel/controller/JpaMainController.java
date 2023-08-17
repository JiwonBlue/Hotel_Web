package everest.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

import org.springframework.web.bind.annotation.GetMapping;

@RequestMapping("everest")
@Controller
@AllArgsConstructor
public class JpaMainController {

    // @Autowired
    // private

    @GetMapping("main.do")
    public String main() {
        return "main/main";
    }

    @GetMapping("footer.do")
    public String footer() {
        return "main/footer";
    }

    @GetMapping("header.do")
    public String header() {
        return "main/header";
    }

    @GetMapping("testfooter.do")
    public String header1() {
        return "main/testfooter";
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
