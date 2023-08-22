package everest.hotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ch.qos.logback.core.model.Model;
import everest.hotel.domain.Board;
//import everest.hotel.service.BoardService;
import lombok.AllArgsConstructor;

@RequestMapping("project")
@Controller
@AllArgsConstructor
public class mainController {

    // main, 로그인창, 회원가입창
    @GetMapping("main.do")
    public String main() {
        return "main/main";
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

    // 예약, 예약내역
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

    @GetMapping("reservationProc.do")
    public String reservationProc() {
        return "reservation/reservationProc";
    }

    // 게시판
    /*
     * @GetMapping("inquiryList.do")
     * public String list(Model model) {
     * System.out.println("출력");
     * List<Board> list = service.getAllBoards();
     * model.addAttribute("list", list);
     * return "/inquiry/inquiryList";
     * }
     */

    @GetMapping("inquiryList2.do")
    public String inquiryList2() {
        return "inquiry/inquiryList2";
    }

    // 현주 추가함
    @GetMapping("inquiryDetail.do")
    public String inquiryDetail() {
        return "inquiry/inquiryDetail";
    }

    @GetMapping("inquiryUpdate.do")
    public String inquiryUpdate() {
        return "inquiry/inquiryUpdate";
    }

    @GetMapping("inquiryWrite.do")
    public String inquiryWrite() {
        return "inquiry/inquiryWrite";
    }

    @GetMapping("inquiryWrite2.do")
    public String inquiryWrite2() {
        return "inquiry/inquiryWrite2";
    }

    // 호텔 소개
    @GetMapping("introduction1.do")
    public String introduction1() {
        return "introduction/introduction1";
    }

    // 오시는길
    @GetMapping("introduction2.do")
    public String introduction2() {
        return "introduction/introduction2";
    }

    @GetMapping("footer.do")
    public String footer() {
        return "main/footer";
    }

    @GetMapping("header.do")
    public String header() {
        return "main/header";
    }

    @GetMapping("testheader.do")
    public String header1() {
        return "main/testheader";
    }

    @GetMapping("testheader2.do")
    public String header12() {
        return "main/testheader2";
    }

    @GetMapping("testfooter.do")
    public String footer1() {
        return "main/testfooter";
    }

    @GetMapping("testmain.do")
    public String tsetmain() {
        return "main/testmain";
    }

}