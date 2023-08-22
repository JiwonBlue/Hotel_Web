package everest.hotel.service;

import java.util.List;
import everest.hotel.domain.Board;

public interface BoardService {
    List<Board> listS();

    Board insertS(Board board);

    boolean deleteS(long boardCode);

    Board selectS(long boardCode);

    boolean updateS(Board board);

}