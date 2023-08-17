package hj.backend.controller.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("project")
@Controller
public class ProjectController {

    @GetMapping("standardroom.do")
    public String standard() {
        return "project/Standard";
    }

    @GetMapping("deluxeroom.do")
    public String deluxe() {
        return "project/Deluxe";
    }

    @GetMapping("sweetroom.do")
    public String sweet() {
        return "project/Sweet";
    }

    @GetMapping("header.do")
    public String header() {
        return "project/header";
    }

    @GetMapping("footer.do")
    public String footer() {
        return "project/footer";
    }

    @GetMapping("login.do")
    public String login() {
        return "project/login";
    }
}
