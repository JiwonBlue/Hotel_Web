package everest.hotel.controller;

import everest.hotel.domain.Board;
import everest.hotel.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("board")
@Controller
public class BoardController {
    @Autowired
    private BoardService service;

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
}