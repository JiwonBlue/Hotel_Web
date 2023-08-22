package everest.hotel.service;

import everest.hotel.domain.Board;

import java.util.List;

public interface BoardService {
    List<Board> listS();

    Board insertS(Board board);

    boolean deleteS(long seq);

    Board updateS(Board board);

    Board contentS(long seq);
}
