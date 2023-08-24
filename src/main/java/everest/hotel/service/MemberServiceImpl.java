package everest.hotel.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import everest.hotel.domain.Member;
import everest.hotel.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService {
    @Autowired
    private final MemberRepository repository;

    @Autowired
    public MemberServiceImpl(MemberRepository repository) {
        this.repository = repository;
    }

    @Override
    public Member joinMember(Member member) {
        return repository.save(member); // 회원 정보 저장
    }

    @Override
    public Member getMemberInfo(String memberId) {
        pln("@getMemberInfo() by SpringDataJpa");

        // 특정 회원정보 조회
        return repository.findByMemberId(memberId);
    }

    @Override
    public Member updateMemberInfo(String memberId, String memberPwd, String memberName, String memberPhone,
            Date memberBirthday) {
        pln("@updateMemberInfo() by SpringDataJpa");

        // 회원 정보 조회
        Member member = repository.findByMemberId(memberId);

        if (member != null) {
            // 회원 정보 수정
            member.setMemberPwd(memberPwd);
            member.setMemberName(memberName);
            member.setMemberPhone(memberPhone);
            member.setMemberBirthday(memberBirthday);
            repository.save(member);
        }
        return member;
    }

    @Override
    public void deleteMember(String memberId) {
        pln("@deleteMember() by SpringDataJpa");

        // 회원 정보 삭제
        repository.deleteById(memberId);
    }

    @Override
    public Member loginMember(String memberId, String memberPwd) {
        pln("@loginMember() by SpringDataJpa");

        // 회원 로그인 처리
        return repository.findByMemberIdAndMemberPwd(memberId, memberPwd);
    }

    void pln(String str) {
        System.out.println(str);
    }
}