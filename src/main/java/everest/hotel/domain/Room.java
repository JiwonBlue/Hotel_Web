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
    @Column(name = "room_code")
    private String roomCode;

    @Column(name = "room_type")
    private String roomType;

    @Column(name = "room_size")
    private String roomSize;

    @Column(name = "room_count")
    private int roomCount;

    @Column(name = "room_info")
    private String roomInfo;

    @Column(name = "room_price")
    private String roomPrice;

    // OneToMany로 예약 걸어야함
    @OneToMany(mappedBy = "room_table")
    @JoinColumn(name = "reserve_code")
    private List<Reserve> reserve;
}