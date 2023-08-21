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
@SequenceGenerator(name = "RESERVE_CODE_GENERATOR", sequenceName = "RESERVE_CODE", initialValue = 1, allocationSize = 1)
@Table(name = "reserve_table")
public class Reserve {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "RESERVE_CODE_GENERATOR")
    @Column(name = "reserve_code")
    private String reserveCode;

    // @member_id ManyToOne으로 걸어줘야함
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "member_id")
    private Member member;

    // @room_code ManyToOne으로 걸어줘야함
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "room_code")
    private Room room;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    @Column(name = "reserve_start_day")
    private Date reserveStartDay;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    @Column(name = "reserve_end_day")
    private Date reserveEndDay;

    @Column(name = "reserve_count")
    private int reserveCount;

    // @OneToMany로 결제 걸어줘야함 (OneToOne 될지도?)
    @OneToMany(mappedBy = "reserve_table")
    @JoinColumn(name = "pay_code")
    private List<Pay> pay;
}