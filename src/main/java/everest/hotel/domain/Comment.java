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
@SequenceGenerator(name = "COMMENT_CODE_GENERATOR", sequenceName = "COMMENT_CODE", initialValue = 1, allocationSize = 1) 
@Table(name = "comment_table")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "COMMENT_CODE_GENERATOR")
    private String comment_code;

    private String recomment_code;
    private String comment_content;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss", timezone = "Asia/Seoul")
    @CreationTimestamp
    private Date comment_rdate;

    //ManyToOne으로 member_id 걸어줘야함
    //ManyToOne으로 board_code 걸어줘야함
}
