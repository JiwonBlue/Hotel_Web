package everest.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("project")
@Controller
public class mainController {
    // main, 로그인창, 회원가입창
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

    // room
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

    // reservation
    @GetMapping("reservation1.do")
    public String reservation1() {
        return "reservation/reservation1";
    }

    @GetMapping("reservation2.do")
    public String reservation2() {
        return "reservation/reservation2";
    }

    @GetMapping("reservation3.do")
    public String reservation3() {
        return "reservation/reservation3";
    }

    // 회원정보
    @GetMapping("inquiryList.do")
    public String inquiryList() {
        return "inquiry/inquiryList";
    }

    // 카카오지도
    @GetMapping("kakaoMap.do")
    public String kakaoMap() {
        return "kakao/kakaoMap";
    }

    // 카카오 오시는길
    @GetMapping("kakaoCome.do")
    public String kakaoCome() {
        return "kakao/come";
    }

}