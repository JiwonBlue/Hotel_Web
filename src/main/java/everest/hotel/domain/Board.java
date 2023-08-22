package everest.hotel.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import org.hibernate.annotations.CreationTimestamp;

import java.sql.Date;

@Entity // jpa 사용할때!
@AllArgsConstructor // 파라미터있는생성자
@NoArgsConstructor // 기본생성자
@Data // setter, getter 자동생성
@SequenceGenerator(name = "BOARD_CODE_GENERATOR", sequenceName = "BOARD_CODE", initialValue = 1, allocationSize = 1)
// jpa사용할때 initialValue-> 초기값

@Table(name = "board_table")
public class Board {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BOARD_CODE_GENERATOR") // generator은 위에서 만든 name의 값

    @Column(name = "board_code")
    private long boardCode;

    @Column(name = "board_title")
    private String boardTitle; // 이녀석이 데이터베이스의 이름과 다르다면??? @Column(name="username") << 여기서의 name은 데이터베이스 컬럼 이름

    @Column(name = "board_content")
    private String boardContent;

    // @Column(name = "member_id")
    // private String memberId;

    // @member_id ManyToOne으로 걸어줘야함
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "member_id") // 이 관계를 가질 때 join 하는 컬럼이 뭐야?
    private Member member;
    // 객체의 Member member과 테이블의 MEMBER MEMBER_ID를 연관관계 매핑

    @Column(name = "board_view")
    private int boardView;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp // 추가. SYSDATE쓰지않고 생성해주는 것. SYSDATE는 오라클에서는 있지만 다른 데이터베이스엔 없을 수도있다. 이녀석은 각
                       // 데이터베이스에 맞는 것을 찾아준다.
    @Column(name = "board_rdate")
    private Date boardRdate;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp // 추가. SYSDATE쓰지않고 생성해주는 것. SYSDATE는 오라클에서는 있지만 다른 데이터베이스엔 없을 수도있다. 이녀석은 각
                       // 데이터베이스에 맞는 것을 찾아준다.
    @Column(name = "board_udate")
    private Date boardUdate;

    @Builder
    public Board(Long boardCode, String boardTitle, String boardContent, Member member, int boardView, Date boardRdate,
            Date boardUdate) {
        this.boardCode = boardCode;
        this.boardTitle = boardTitle;
        this.boardContent = boardContent;
        this.member = member;
        this.boardView = boardView;
        this.boardRdate = boardRdate;
        this.boardUdate = boardUdate;
    }

    // @OneToMany로 파일 걸어줘야함.
    // @OneToMany(mappedBy = "board")
    // private List<File> file;

    // @OneToMany로 코멘트 걸어줘야함
    // @OneToMany(mappedBy = "board")
    // private List<Comment> comment;

    // @member_id ManyToOne으로 걸어줘야함
    /*
     * @ManyToOne
     * 
     * @JoinColumn
     * private Member member;
     */

    // ex)
    // @JoinColumn(name = "comment_code")
    // private list<comment> board_comment;
}
