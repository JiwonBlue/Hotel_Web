package everest.hotel.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.sql.Date;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@SequenceGenerator(name = "RESERVE_CODE_GENERATOR", sequenceName = "RESERVE_CODE", initialValue = 1, allocationSize = 1)
@Table(name = "reserve_table")
public class Reserve {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "RESERVE_CODE_GENERATOR")
    private String reserve_code;

    // @member_id ManyToOne으로 걸어줘야함
    // @room_code ManyToOne으로 걸어줘야함

    private int board_view;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    private Date reserve_start_day;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    private Date reserve_end_day;
    private int reserve_count;

    // @OneToMany로 결제 걸어줘야함 (OneToOne 될지도?)
}