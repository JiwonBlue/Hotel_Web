package everest.hotel.domain;

import java.util.List;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@SequenceGenerator(name = "ROOM_CODE_GENERATOR", sequenceName = "ROOM_CODE", initialValue = 1, allocationSize = 1)
@Table(name = "room_table")
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ROOM_CODE_GENERATOR")
    private String room_code;

    private String room_type;
    private String room_size;
    private int room_count;
    private String room_info;
    private String room_price;

    // OneToMany로 예약 걸어야함
    @OneToMany
    @JoinColumn(name = "reserve_code")
    private List<Reserve> reserve;
}