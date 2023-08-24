package everest.hotel.controller;

import java.util.List;
import java.sql.Date;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import everest.hotel.domain.Member;
import everest.hotel.dto.BoardListResult;
import everest.hotel.domain.Board;
import everest.hotel.service.MemberService;
import everest.hotel.service.BoardService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
//import everest.hotel.service.BoardService;
import lombok.AllArgsConstructor;

@RequestMapping("project")
@Controller
@AllArgsConstructor
public class mainController {
    private MemberService MemberService;
    private BoardService BoardService;

    // main, 로그인창, 회원가입창
    @GetMapping("main.do")
    public String main() {
        return "main/main";
    }

    @GetMapping("login.do")
    public String login() {
        return "login/login";
    }

    @PostMapping("login.do")
    public String login(@RequestParam("u_email") String memberId,
            @RequestParam("u_pwd") String memberPwd,
            HttpSession session, Model model, HttpServletRequest request) {
        Member member = MemberService.loginMember(memberId, memberPwd);

        if (member != null) {
            // 로그인 성공한 경우
            session.setAttribute("member", member); // 로그인한 회원 정보 세션에 저장
            model.addAttribute("message", "로그인 성공");
            return "redirect:main.do";
        } else {
            // 로그인 실패한 경우
            model.addAttribute("message", "로그인 실패");
            return "login/login";
        }
    }

    @GetMapping("logout.do")
    public String logout(HttpSession session) {
        session.removeAttribute("member"); // 세션에서 회원 정보 제거

        return "redirect:main.do";
    }

    // 회원가입
    @GetMapping("join.do")
    public String join(HttpSession session) {
        return "join/joinForm";
    }

    @PostMapping("joinForm.do")
    public String joinMember(@ModelAttribute Member member) {
        MemberService.joinMember(member);
        return "join/joinProc";
    }

    // 회원 정보 수정

    @GetMapping("userInfo.do")
    public String userInfo(HttpSession session, Model model) {
        Member member = (Member) session.getAttribute("member");
        // 저장된 member 객체를 세션에서 가져올 때, 세션은 그 객체를 Object 타입으로 반환한다 그래서 (Member)로 형변환을 해줌
        if (member != null) {
            model.addAttribute("member", member);
            return "user/userInfo";
        } else {
            return "redirect:login.do";
        }
    }

    @GetMapping("userUpdate.do")
    public String userUpdate() {
        return "user/userUpdate";
    }

    // @PostMapping("userinfo.do")
    // public String userRealUpdate() {
    // MemberService.updateMemberInfo(, null, null, null, null)
    // return "user/userinfo";
    // }
    @PostMapping("userInfo.do")
    public String userRealUpdate(
            @RequestParam String memberId,
            @RequestParam String memberPwd,
            @RequestParam String memberName,
            @RequestParam String memberPhone,
            @RequestParam Date memberBirthday,
            HttpSession session,
            Model model) {
        // 사용자로부터 입력 받은 정보를 사용하여 회원 정보 업데이트
        Member updatedMember = MemberService.updateMemberInfo(
                memberId,
                memberPwd,
                memberName,
                memberPhone,
                memberBirthday);

        // session.setAttribute("member", updatedMember);// 업데이트된 회원 정보를 세션에 저장하여 화면에 반영
        model.addAttribute("member", updatedMember);// 업데이트된 회원 정보를 모델에 추가하여 화면에 반영

        return "user/userInfo";
    }

    // @DeleteMapping("delete.do")
    // public String deleteUser(String memberId) {
    // MemberService.deleteMember(memberId);
    // return "user/userinfo";
    // }

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

    // @GetMapping("inquiryList.do")
    // public String list(Model model) {

    // System.out.println("출력");
    // List<Board> list = BoardService.listS();
    // model.addAttribute("list", list);
    // return "/inquiry/inquiryList";
    // }

    // 게시판 페이징---
    @GetMapping("inquiryList.do")
    public String list(
            @PageableDefault(size = 3, sort = "boardCode", direction = Sort.Direction.DESC) Pageable pageable,
            Model model) {
        BoardListResult listResult = BoardService.getBoardListResult(pageable);
        model.addAttribute("listResult", listResult);
        return "/inquiry/inquiryList";
    }
    // ---

    @PostMapping("inquiryList.do")
    public String write(Board board) {
        BoardService.insertS(board);
        // response.sendRedirect(); 이거 말고
        // return "/inquiry/inquiryList"; // 이렇게 하면 편함 //갱신됨
        return "redirect:inquiryList.do";
    }

    @GetMapping("inquiryList2.do")
    public String inquiryList2() {
        return "/inquiry/inquiryList2";
    }

    @GetMapping("inquiryDetail.do")
    public String inquiryDetail(long boardCode, Model model) {
        Board select = BoardService.selectS(boardCode);
        model.addAttribute("content", select);
        return "/inquiry/inquiryDetail";
    }

    @PostMapping("inquiryDetail.do")
    public String inquiryUpdate(@ModelAttribute Board board) {
        BoardService.updateS(board);

        return "redirect:inquiryList.do";
    }

    // board 삭제하는 부분
    @DeleteMapping("inquiryDelete.do")
    public String inquiryDelete(@RequestParam long boardCode) {
        BoardService.deleteS(boardCode);
        return "redirect:inquiryList.do";
    }

    @GetMapping("content.do")
    public String content(long boardCode, Model model) {
        Board content = BoardService.selectS(boardCode);
        model.addAttribute("content", content); // 여기의 "list"는 뷰(list.jsp)의 <c:forEach items="${list}" var="dto"> 과일치해야함
        return "/inquiry/inquiryDetail"; // 템플릿방식
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

    @GetMapping("footer1.do")
    public String footer1() {
        return "main/footer1";
    }

    @GetMapping("testmain.do")
    public String tsetmain() {
        return "main/testmain";
    }

    // Q&A 링크(1~10까지)
    @GetMapping("qna1.do")
    public String qna1() {
        return "inquiry/qnA1";
    }

    @GetMapping("qna2.do")
    public String qna2() {
        return "inquiry/qnA2";
    }

    @GetMapping("qna3.do")
    public String qna3() {
        return "inquiry/qnA3";
    }

    @GetMapping("qna4.do")
    public String qna4() {
        return "inquiry/qnA4";
    }

    @GetMapping("qna5.do")
    public String qna5() {
        return "inquiry/qnA5";
    }

    @GetMapping("qna6.do")
    public String qna6() {
        return "inquiry/qnA6";
    }

    @GetMapping("qna7.do")
    public String qna7() {
        return "inquiry/qnA7";
    }

    @GetMapping("qna8.do")
    public String qna8() {
        return "inquiry/qnA8";
    }

    @GetMapping("qna9.do")
    public String qna9() {
        return "inquiry/qnA9";
    }

    @GetMapping("qna10.do")
    public String qna10() {
        return "inquiry/qnA10";
    }

}