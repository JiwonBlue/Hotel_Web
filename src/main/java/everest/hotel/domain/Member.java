package everest.hotel.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.sql.Date;
import java.util.List;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@SequenceGenerator(name = "MEMBER_ID_GENERATOR", sequenceName = "MEMBER_ID", initialValue = 1, allocationSize = 1)
@Table(name = "mamber_table")
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "MEMBER_ID_GENERATOR")
    private String member_id;

    private String member_pwd;
    private String member_name;
    private String member_phone;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    private Date member_birthday;

    private String member_in_out;

    // OneToMany로 예약, 게시판, 코멘트 걸어야함
    @OneToMany
    @JoinColumn(name = "reserve_code")
    private List<Reserve> reserve;

    @OneToMany
    @JoinColumn(name = "board_code")
    private List<Board> board;

    @OneToMany
    @JoinColumn(name = "comment_code")
    private List<Comment> comment;
}
