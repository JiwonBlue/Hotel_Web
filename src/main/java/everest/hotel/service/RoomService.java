package everest.hotel.service;

import java.util.List;
import everest.hotel.domain.Room;

public interface RoomService {

    // 객실생성
    Room createRoom(String room_code, String room_type, String room_size, int room_count, String room_info,
            int room_price);

    // 객실정보 조회
    Room getRoomInfo(String room_code);

    // 모든 객실목록 조회
    List<Room> getAllRooms();

    // 특정 객실유형의 객실목록 조회
    List<Room> getRoomsByType(String room_type);

    // 객실정보 수정
    Room updateRoomInfo(String room_code);

    // 객실정보 삭제
    void deleteRoom(String room_code);
}