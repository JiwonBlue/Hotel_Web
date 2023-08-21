package everest.hotel.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.sql.Date;

@Entity // jpa 사용할때!
@AllArgsConstructor // 파라미터있는생성자
@NoArgsConstructor // 기본생성자
@Data // setter, getter 자동생성
@SequenceGenerator(name = "BOARD_CODE_GENERATOR", sequenceName = "BOARD_CODE", initialValue = 1, allocationSize = 1) // jpa사용할때
                                                                                                                     // initialValue->
                                                                                                                     // 초기값
@Table(name = "board_table")
public class Board {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BOARD_CODE_GENERATOR") // generator은 위에서 만든 name의 값
    private String board_code;
    // @Column(name="username")
    private String board_title; // 이녀석이 데이터베이스의 이름과 다르다면??? @Column(name="username") << 여기서의 name은 데이터베이스 컬럼 이름
    private String board_content;

    // @member_id ManyToOne으로 걸어줘야함

    private int board_view;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp // 추가. SYSDATE쓰지않고 생성해주는 것. SYSDATE는 오라클에서는 있지만 다른 데이터베이스엔 없을 수도있다. 이녀석은 각
                       // 데이터베이스에 맞는 것을 찾아준다.
    private Date board_rdate;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp // 추가. SYSDATE쓰지않고 생성해주는 것. SYSDATE는 오라클에서는 있지만 다른 데이터베이스엔 없을 수도있다. 이녀석은 각
                       // 데이터베이스에 맞는 것을 찾아준다.
    private Date board_udate;

    // @OneToMany로 파일 걸어줘야함.
    // @OneToMany로 코멘트 걸어줘야함

    // ex)
    // @JoinColumn(name = "comment_code")
    // private list<comment> board_comment;
}
