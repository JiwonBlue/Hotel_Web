package everest.hotel.service;

import java.util.List;
import everest.hotel.domain.Member;
import everest.hotel.domain.Board;

public interface AdminService {

    // 사용자목록 조회
    List<Member> getAllMembers();

    // 특정 사용자정보 조회
    Member getMemberInfo(String member_id);

    // 사용자정보 삭제
    boolean deleteMember(String member_id);

    // 게시판목록 조회
    List<Board> getAllBoards();

    // 특정게시판 정보 조회
    Board getBoardInfo(String board_code);

    // 게시판정보 수정
    Board updateBoardInfo(String board_code, String new_board_title);

    // 게시판정보 삭제
    void deleteBoard(String board_code);

}
