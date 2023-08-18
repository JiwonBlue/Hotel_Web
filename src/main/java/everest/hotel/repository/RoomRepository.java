package everest.hotel.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepository extends JpaRepository<Room, Long> {
    List<Room> findByType(String type);

    List<Room> findBySize(String size);

    List<Room> findByCount(String count);

    List<Room> findByInfo(String info);

    List<Room> findByPrice(String price);

}