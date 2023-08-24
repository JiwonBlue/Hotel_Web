package everest.hotel.service;

import everest.hotel.domain.Board;
import everest.hotel.dto.BoardListResult;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface BoardService {
    List<Board> listS();

    Board insertS(Board board);

    boolean deleteS(long seq);

    Board updateS(Board board);

    Board contentS(long boardCode, String memberId);

    Board selectS(long boardCode);

    Page<Board> findAll(Pageable pageable);

    BoardListResult getBoardListResult(Pageable pageable);
}
