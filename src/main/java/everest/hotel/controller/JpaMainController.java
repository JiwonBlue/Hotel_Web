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
        return "main/form";
    }

    @GetMapping("footer.do")
    public String footer() {
        return "main/footer";
    }

    @GetMapping("header.do")
    public String header() {
        return "main/header";
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
