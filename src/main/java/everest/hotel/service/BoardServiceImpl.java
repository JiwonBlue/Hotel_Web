package everest.hotel.service;

import everest.hotel.domain.Board;
import everest.hotel.repository.BoardRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService { // service랑 autowired 주석풀면 springconfig 없어도 됌
    @Autowired
    private final BoardRepository repository;

    public BoardServiceImpl(BoardRepository repository) {
        this.repository = repository;
    }

    @Override
    public List<Board> listS() {
        pln("@listS() by SpringDataJpa");
        return repository.findAll(Sort.by(Sort.Direction.DESC, "boardCode"));
    }

    @Override
    public Board insertS(Board board) {
        pln("@insertS() by SpringDataJpa");
        board = repository.save(board);
        pln("insertS() board: " + board);
        return board;
    }

    @Override
    public boolean deleteS(long seq) {
        pln("@deleteS() by SpringDataJpa");
        repository.deleteById(seq);
        return true;
    }

    @Override
    public Board updateS(Board board) {

        // pln("@updateS() by SpringDataJpa");
        // board = repository.findByBoardCode(board.getBoardCode()).get(0);
        // // board.setBoard_rdate(); // board는 domain안에 있는 board의 rdate
        // board = repository.save(board); // save로 값 저장
        // pln("insertS() board: " + board);
        return null;
    }

    @Override
    public Board contentS(long boardCode) {

        Board board = repository.findById(boardCode).get();
        return board;
    }

    public List<Board> findByBoardCode(long boardCode) {
        List<Board> list = repository.findByBoardCode(boardCode);
        pln("@findByBoardCode() by SpringDataJpa list: " + list);
        return list;
    }

    public List<Board> findByBoardCodeAndMemberId(long boardCode, String memberId) {
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
