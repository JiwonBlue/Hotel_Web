package everest.hotel.service;

import everest.hotel.domain.Board;
import everest.hotel.repository.BoardRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceJpa implements BoardService {
    @Autowired
    private final BoardRepository repository;

    @Autowired
    public BoardServiceJpa(BoardRepository repository) {
        this.repository = repository;
    }

    @Override
    public List<Board> getAllBoards() {
        pln("@listS() by SpringDataJpa");
        return repository.findAll(Sort.by(Sort.Direction.DESC, "board_Code"));
    }

    public Board getBoardInfo(String board_code) {
        Board list = repository.findByBoardCode(board_code);
        pln("@getBoardInfo() by SpringDataJpa list: " + list);
        return list;
    }

    public List<Board> findByBoardCodeAndMemberId(String boardCode, String memberId) {
        List<Board> list = repository.findByBoardCodeAndMemberId(boardCode, memberId);
        pln("@findByBoardCodeAndMemberId() SpringDataJpa list: " + list);
        return list;
    }

    public List<Board> findByMemberIdContaining(String memberId) {
        List<Board> list = repository.findByMemberIdContaining(memberId);
        pln("@findByMemberIdContaining() by SpringDataJpa list: " + list);
        return list;
    }

    void pln(String str) {

        System.out.println(str);
    }
}
