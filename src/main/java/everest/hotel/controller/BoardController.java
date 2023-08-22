package everest.hotel.controller;

import everest.hotel.domain.Board;
import everest.hotel.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.PostMapping;
=======
>>>>>>> e29029d12216b53e70bdb456b5f9680acd95b3aa
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

<<<<<<< HEAD
@RequestMapping("board") //서비스하는 폴더랑 이름 맞추는 것이 안헷갈린다. views/board // 여기가 board니까 index.jsp에서도 <a href="board/list.do">주소록</a> 으로 한다.
=======
@RequestMapping("board")
>>>>>>> e29029d12216b53e70bdb456b5f9680acd95b3aa
@Controller
public class BoardController {
    @Autowired
    private BoardService service;

<<<<<<< HEAD
    @GetMapping("list.do")
    public String list(Model model){
        List<Board> list = service.listS();
        model.addAttribute("list", list); // 여기의 "list"는 뷰(list.jsp)의 <c:forEach items="${list}"  var="dto"> 과 일치해야함
        return "/board/list"; //템플릿방식
    }
    @GetMapping("write.do") // 뷰로 이동시켜줘야함 <a href='write.do'>입력</a><br/> 랑 일치시켜줘야함 //링크거는건 무조건 다 get방식 get이 표준.
    public String write(){
        return "board/write";
    }

    @PostMapping("write.do") //get post로 구분하고 이름을 똑같이하면 좋다
    public String write(Board board){
        service.insertS(board);
        //response.sendRedirect(); 이거 말고
        return "redirect:list.do"; //이렇게 하면 편함 //갱신됨
    }
    //서비스의 반환 boolean, board 등을 쓰는 것은 전적으로 view 페이지에 달려있다.
    @GetMapping("del.do")
    public String delete(long seq){
        service.deleteS(seq);
        return "redirect:list.do";
    }

    @GetMapping("select.do")
    public String select(long seq){
        service.selectS(seq);
        return "redirect:list.do";
    }

    @GetMapping("update.do")
    public String update(long seq, Model model){
        Board select = service.selectS(seq);
        model.addAttribute("update", select);
        return "board/update";
    }

    @PostMapping("update.do")
    public String updateOk(Board board){
        service.updateS(board);
        return "redirect:list.do";
    }

    @GetMapping("content.do")
    public String content(long seq, Model model){
        Board content = service.selectS(seq);
        model.addAttribute("content", content); // 여기의 "list"는 뷰(list.jsp)의 <c:forEach items="${list}"  var="dto"> 과 일치해야함
        return "/board/content"; //템플릿방식
    }

=======
    @GetMapping("inquiryList.do")
    public String list(Model model) {
        System.out.println("출력");
        List<Board> list = service.getAllBoards();
        model.addAttribute("list", list);
        return "/inquiry/inquiryList";
    }

    /*
     * @GetMapping("inquiryDetail.do")
     * public String inquiryDetail(long seq, Model model) {
     * Board board = service.contentS(seq);
     * model.addAttribute("board", board);
     * return "/inquiry/inquiryDetail"; // inquiryDetail.jsp 경로
     * }
     */

    /*
     * 
     * @GetMapping("write.do")
     * public String write() {
     * return "/board/write";
     * }
     * 
     * @PostMapping("write.do")
     * public String write(Board board) {
     * service.insertS(board);
     * return "redirect:list.do";
     * }
     * 
     * @GetMapping("del.do")
     * public String delete(long seq) {
     * service.deleteS(seq);
     * return "redirect:list.do";
     * }
     * 
     * @GetMapping("inquiryDetail.do")
     * public String inquiryDetail(long seq, Model model) {
     * Board board = service.contentS(seq);
     * model.addAttribute("board", board);
     * return "/inquiry/inquiryDetail"; // inquiryDetail.jsp 경로
     * }
     * 
     * @GetMapping("update.do")
     * public String update(long seq, Model model) {
     * Board board = service.contentS(seq);
     * model.addAttribute("board", board);
     * return "/board/update";
     * }
     * 
     * @PostMapping("update.do")
     * public String update(Board board) {
     * service.updateS(board);
     * return "redirect:list.do";
     * }
     */
>>>>>>> e29029d12216b53e70bdb456b5f9680acd95b3aa
}