package everest.hotel.repository;

import everest.hotel.domain.Board;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SpringDataJpaOracleBoardRepository extends JpaRepository<Board, Long> {
    //원래 BoardRepository를 자체적으로 생성해준다.
    List<Board> findByWriter(String writer); //테이블 컬럼에 의존적인 select는 직접 만들어줘야 한다.
    //JPQL -> select a from Board a where a.name=:name (:name이 String name)
    List<Board> findByWriterAndEmail(String writer, String email); //이름만들때 And, Or,... //where a.name=:name and a.board=:board; 이럴때 And이다. (Or로 바꾸면 where 절에서도 or)
    List<Board> findByWriterContaining(String writer); //XXXContaining()은 like 연산자 역할
    Page<Board> findByOrderBySeqDesc(Pageable pageable);
}
