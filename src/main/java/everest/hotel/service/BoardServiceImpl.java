package everest.hotel.service;

import everest.hotel.domain.Board;
import everest.hotel.dto.BoardListResult;
import everest.hotel.repository.BoardRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Pageable;

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
    public boolean deleteS(long boardCode) {
        pln("@deleteS() by SpringDataJpa");
        repository.deleteById(boardCode);
        return true;
    }

    @Override
    public Board selectS(long boardCode) {
        pln("@selectS() by SpringDataJpa");
        return repository.findById(boardCode).get();
    }

    @Override
    public Board updateS(Board board) {
        pln("@updateS() by SpringDataJpa");

        // Long boardCode = board.getBoardCode();
        // Board board1 = repository.findById(boardCode).orElse(null); --> 이 두줄로 해도 되고

        Board board1 = repository.getById(board.getBoardCode()); // --> 이 한줄로 해도 되는데 이렇게하는 방법밖에 없나..?

        board1.setBoardTitle(board.getBoardTitle());
        board1.setBoardContent(board.getBoardContent());
        board1.setBoardUdate(board.getBoardUdate());

        // board = repository.findByBoardCode(board.getBoardCode());
        // board.setBoard_rdate(); // board는 domain안에 있는 board의 rdate

        board = repository.save(board1); // save로 값 저장

        pln("updateS() board: " + board);
        return board;
    }

    @Override
    public Board contentS(long boardCode, String memberId) {
        Board board = repository.findByMemberId(memberId);
        // Board board = repository.findById(boardCode).get();
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

    @Override
    public Page<Board> findAll(Pageable pageable) {
        pln("@findAll() pageable: " + pageable);
        return repository.findByOrderByBoardCodeDesc(pageable);
    }

    @Override
    public BoardListResult getBoardListResult(Pageable pageable) {
        Page<Board> list = findAll(pageable);
        int page = pageable.getPageNumber();
        long totalCount = repository.count();
        int size = pageable.getPageSize();
        pln("@getBoardListResult() page: " + page + ", totalCount: " + totalCount + ", size: " + size);
        return new BoardListResult(page, totalCount, size, list);
    }

    void pln(String str) {

        System.out.println(str);
    }
}
