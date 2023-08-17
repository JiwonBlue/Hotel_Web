package everest.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("project")
@Controller
public class mainController {

    @GetMapping("main.do")
    public String main() {
        return "login/main";
    }

    @GetMapping("login.do")
    public String login() {
        return "login/login";
    }

    @GetMapping("join.do")
    public String join() {
        return "join/joinForm";
    }

    @GetMapping("standardroom.do")
    public String standard() {
        return "room/Standard";
    }

    @GetMapping("deluxeroom.do")
    public String deluxe() {
        return "room/Deluxe";
    }

    @GetMapping("sweetroom.do")
    public String sweet() {
        return "room/Sweet";
    }

    @GetMapping("header.do")
    public String header() {
        return "room/header";
    }

    @GetMapping("footer.do")
    public String footer() {
        return "room/footer";
    }

}