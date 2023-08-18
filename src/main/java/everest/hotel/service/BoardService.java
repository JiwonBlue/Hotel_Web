package everest.hotel.service;

import java.util.Date;
import java.util.List;
import everest.hotel.domain.Board;

public interface BoardService {

    // 게시물 목록 조회
    List<Board> getAllBoards();

    // 게시물 작성
    Board createBoard(String board_title, String board_content, String member_id);

    // 게시물 조회
    Board getBoardInfo(String board_code);

    // 게시물 수정
    boolean updateBoard(String board_code, String board_title, String board_content);

    // 게시물 삭제
    boolean deleteBoard(String board_code);

    // 특정 회원의 게시물 목록 조회
    List<Board> getBoardForMember(String member_id);

    // 게시물 조회수 증가
    void increaseBoardViewCount(String board_code);

    // 게시물 수정일 업데이트
    void updateBoardUpdateDate(String board_code, Date board_udate);

}
