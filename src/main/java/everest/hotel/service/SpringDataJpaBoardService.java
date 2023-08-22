package everest.hotel.service;

import everest.hotel.domain.Board;
import everest.hotel.repository.SpringDataJpaOracleBoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;

import java.sql.Date;
import java.util.List;

//@Service
public class SpringDataJpaBoardService implements BoardService {
    @Autowired
    private final SpringDataJpaOracleBoardRepository repository;
    @Autowired
    public SpringDataJpaBoardService(SpringDataJpaOracleBoardRepository repository){
        this.repository = repository;
    }
    @Override
    public List<Board> listS() {
        pln("@listS() by SpringDataJpa");
        return repository.findAll(Sort.by(Sort.Direction.DESC, "seq"));
    }

    @Override
    public Board insertS(Board board) {
        pln("@insertS() by SpringDataJpa");
        board = repository.save(board); //save는 매개변수(S) 리턴(S) //고로 받아주기만 하면 된다. //board = 의 board랑 매개변수의 board는 다르다.
        pln("@insertS() board: " + board);
        return board;
    }

    @Override
    public boolean deleteS(long seq) {
        pln("@deleteS() by SpringDataJpa"); //선생님같은 경우 레포지토리에서 #, 서비스에서 @ 해준다.
        repository.deleteById(seq);
        return true; //의미가 없지만 긍정적으로 true나 하자... 기본적인 리턴타입 boolean아니라 아쉽,,
    }

    @Override
    public Board selectS(long seq) {
        pln("@selectS() by SpringDataJpa");
        return repository.findById(seq).get();
    }

    @Override
    public boolean updateS(Board board) {
        pln("@updateS() by SpringDataJpa");
        Date date = repository.findById(board.getBoardCode()).get().getBoardRdate();
        board.setBoardRdate(date);
        repository.save(board);
        return true;
    }

    public List<Board> findByWriter(String writer){ //별로 달라지는게 없기 때문에 S 붙이지 말자! 사실 상관은 없다!
        //의무적으로 public은 아니지만 목적이 컨트롤러에서 호출하는 것이기 때문에 public 해줘야 한다. 패키지가 다르기 때문.
        List<Board> list = repository.findByWriter(writer);
        pln("@findByWriter() by SpringDataJpa list: " +list);
        return list;
    }
    List<Board> findByWriterAndEmail(String writer, String email){
        List<Board> list = repository.findByWriterAndEmail(writer, email);
        pln("@findByWriterAndBoard() by SpringDataJpa list: " +list);
        return list;
    }
    List<Board> findByWriterContaining(String writer){
        List<Board> list = repository.findByWriterContaining(writer);
        pln("@findByWriterContaining() by SpringDataJpa list: " +list);
        return list;
    }

    void pln(String str){
        System.out.println(str);
    }
}
