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
@SequenceGenerator(name = "PAY_CODE_GENERATOR", sequenceName = "PAY_CODE", initialValue = 1, allocationSize = 1)
@Table(name = "pay_table")
public class Pay {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "PAY_CODE_GENERATOR")
    @Column(name = "pay_code")
    private String payCode;

    // @reserve_code ManyToOne으로 걸어줘야함 (OneToOne 될지도?)
    @ManyToOne
    @JoinColumn
    private Reserve reserve;

    @Column(name = "pay_money")
    private int payMoney;

    @Column(name = "pay_what")
    private String payWhat;

    @Column(name = "pay_bank")
    private String payBank;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    @Column(name = "pay_day")
    private Date payDay;

}