package everest.hotel.service;

import java.util.List;

import everest.hotel.domain.Pay;

public interface PayService {

    // 결제 정보를 생성하는 메서드
    List<Pay> PayInformation();
    // Pay createPay(String pay_code, String reserve_code, long pay_money, String
    // pay_what, String pay_bank, Date pay_day);

    // 특정 예약에 대한 결제 정보를 조회하는 메서드
    Pay getPayInfo(String pay_code);

    // 결제 정보를 수정하는 메서드
    boolean updatePay(String pay_code, String reserve_code);

    // 결제 정보를 삭제하는 메서드
    boolean deletePay(String pay_code);

    // 특정 예약에 대한 결제 내역을 조회하는 메서드
    List<Pay> getPayForReservation(String reserve_code);

}
