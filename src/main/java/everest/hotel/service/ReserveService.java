package everest.hotel.service;

import java.util.Date;
import java.util.List;

import everest.hotel.domain.Reserve;

public interface ReserveService {

    // 특정 회원의 예약 목록 조회
    List<Reserve> getReservationForMember(String member_id);

    // 특정 객실의 예약 목록 조회
    List<Reserve> getReservationForRoom(String room_code);

    // 예약 생성
    Reserve createReservation(String reserve_code, String member_id, String room_code, Date reserve_start_day,
            Date reserve_end_day, int reserve_count);

    // 예약 정보 조회
    Reserve getReservationInfo(String reserve_code);

    // 예약 정보 수정
    boolean updateReservation(String reserve_code, Date reserve_start_day, Date reserve_end_day, int reserve_count);

    // 예약 정보 삭제
    boolean deleteReservation(String reserve_code);

}