package everest.hotel.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.sql.Date;
import java.util.List;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@Table(name = "member_table")
public class Member {
    @Id
    @Column(name = "member_id")
    private String memberId;

    @Column(name = "member_pwd")
    private String memberPwd;

    @Column(name = "member_name")
    private String memberName;

    @Column(name = "member_phone")
    private String memberPhone;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    @Column(name = "member_birthday")
    private Date memberBirthday;

    // @Builder
    // public Member(String memberId, String memberPwd, String memberName, String
    // memberPhone, Date memberBirthday,
    // String memberInOut) {
    // this.memberId = memberId;
    // this.memberPwd = memberPwd;
    // this.memberName = memberName;
    // this.memberPhone = memberPhone;
    // this.memberBirthday = memberBirthday;
    // this.memberInOut = memberInOut;
    // }

    // OneToMany로 예약, 게시판, 코멘트 걸어야함
    // @OneToMany(mappedBy = "member")
    // private List<Reserve> reserve;

    // @OneToMany(mappedBy = "member")
    // private List<Board> board;

    // @OneToMany(mappedBy = "member")
    // private List<Comment> comment;
}
