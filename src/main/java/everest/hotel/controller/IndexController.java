package everest.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    @GetMapping("") // "index.do" 없이 "" 하면 그냥 바로 호출
    public String index() {
        return "index";
    }
}
