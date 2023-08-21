package everest.hotel.service;

import java.util.Date;
import java.util.List;
import everest.hotel.domain.Board;

public interface BoardService {

    // 게시물 목록 조회
    List<Board> getAllBoards();

    // 게시물 조회
    Board getBoardInfo(String boardCode);

    // 특정 회원의 게시물 목록 조회
    List<Board> findByBoardCodeAndMemberId(String boardCode, String memberId);

    // member_id에 특정 문자열을 포함하는 모든 게시물을 조회하여 리스트로 반환
    List<Board> MemberIdContaining(String memberId);

    // 게시물 작성
    Board insertBoard(Board board);

    // 게시물 수정
    void updateBoard(String boardCode, String memberId, String boardTitle, String boardContent);

    // 게시물 삭제
    void deleteBoard(String boardCode);

    /*
     * // 게시물 조회수 증가
     * void increaseBoardViewCount(String board_code);
     * 
     * // 게시물 수정일 업데이트
     * void updateBoardUpdateDate(String board_code, Date board_udate);
     */
}
