package everest.hotel.service;

import java.util.List;

import everest.hotel.domain.Comment;

public interface CommentService {
    // 댓글 작성
    Comment createComment(String comment_code, String member_id, String board_code);

    // 대댓글 작성
    Comment createRecomment(String recomment_code, String comment_content, String member_id, String board_code);

    // 댓글 조회
    Comment getComment(String comment_code);

    // 대댓글 조회
    List<Comment> getRecommentsForComment(String comment_code);

    // 특정 게시물에 대한 댓글 목록 조회
    List<Comment> getCommentsForBoard(String board_code);

    // 댓글 수정
    boolean updateComment(String comment_code);

    // 댓글 삭제
    boolean deleteComment(String comment_code);
}

/*
 * 댓글 작성
 * INSERT INTO COMMENT_TABLE (COMMENT_CODE, COMMENT_CONTENT, COMMENT_RDATE,
 * MEMBER_ID, BOARD_CODE)
 * VALUES ('comment1', '댓글 내용', SYSDATE, 'member1', 'board1');
 * 
 * 대댓글 작성
 * INSERT INTO COMMENT_TABLE (COMMENT_CODE, RECOMMENT_CODE, COMMENT_CONTENT,
 * COMMENT_RDATE, MEMBER_ID, BOARD_CODE)
 * VALUES ('recomment1', 'comment1', '대댓글 내용', SYSDATE, 'member2', 'board1');
 */
