package everest.hotel.repository;

import everest.hotel.domain.Board;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BoardRepository extends JpaRepository<Board, Long> {
    // 해당 조건을 만족하는 게시물 검색
    List<Board> findByBoardCode(long boardCode); // board_Code

    // 이 두 개의 매개변수를 사용하여 해당 조건을 만족하는 게시물을 검색
    List<Board> findByBoardCodeAndMemberId(long boardCode, String memberId); // And, Or,...

    // member_id에 특정 문자열을 포함하는 모든 게시물을 조회하여 리스트로 반환
    List<Board> findByMemberIdContaining(String memberId); // XXXContaining()은 like연산자 역할

    // 게시물 수 조회
    /*
     * Long countByBoardCode(String boardCode);
     * 
     * // 게시물의 댓글 수 조회
     * Long countCommentsByBoardCode(Long boardCode);
     */
}
