package everest.hotel.service;

import everest.hotel.domain.Board;
import everest.hotel.repository.BoardRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    private final BoardRepository repository;

    @Autowired
    public BoardServiceImpl(BoardRepository repository) {
        this.repository = repository;
    }

    @Override
    public List<Board> getAllBoards() {
        pln("@getAllBoards() by SpringDataJpa");
        return repository.findAll(Sort.by(Sort.Direction.DESC, "boardCode"));
    }

    @Override
    public Board getBoardInfo(String boardCode) {
        Board list = repository.findByBoardCode(boardCode);
        pln("@getBoardInfo() by SpringDataJpa list: " + list);
        return list;
    }

    // 제목으로 게시물 정보 조회

    @Override
    public List<Board> findByBoardCodeAndMemberId(String boardCode, String memberId) {
        List<Board> list = repository.findByBoardCodeAndMemberId(boardCode, memberId);
        pln("@findByBoardCodeAndMemberId() SpringDataJpa list: " + list);
        return list;
    }

    // 일단 얘는 깍두기
    // member_id에 특정 문자열을 포함하는 모든 게시물을 조회하여 리스트로 반환
    @Override
    public List<Board> MemberIdContaining(String memberId) {
        List<Board> list = repository.findByMemberIdContaining(memberId);
        pln("@findByMemberIdContaining() by SpringDataJpa list: " + list);
        return list;
    }

    @Override
    public Board insertBoard(Board board) {
        Board boardcode = repository.save(board);
        return boardcode;

    }

    @Override
    public void updateBoard(String boardCode, String memberId, String boardTitle, String boardContent) {
        Board existBoard = repository.findByBoardCode(boardCode);
        if (existBoard != null) {
            existBoard.setMemberId(memberId);
            existBoard.setBoardTitle(boardTitle);
            existBoard.setBoardContent(boardContent);
            repository.save(existBoard);
        }
    }

    @Override
    public void deleteBoard(String boardCode) {
        repository.deleteById(boardCode);
    }

    void pln(String str) {
        System.out.println(str);
    }

}
