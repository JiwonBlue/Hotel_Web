package everest.hotel.service;

import everest.hotel.domain.Board;
import everest.hotel.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    private final BoardRepository repository;

    public BoardServiceImpl(BoardRepository repository) {
        this.repository = repository;
    }

    @Override
    public List<Board> getAllBoards() {
        pln("@getAllBoards() by SpringDataJpa");
        return repository.findAll(Sort.by(Sort.Direction.DESC, "boardCode"));
    }

    @Override
    public Board getBoardInfo(long boardCode) {
        Board list = repository.findByBoardCode(boardCode);
        pln("@getBoardInfo() by SpringDataJpa list: " + list);
        return list;
    }

    @Override
    public Board insertBoard(Board board) {
        Board boardcode = repository.save(board);
        return boardcode;
    }

    @Override
    public void updateBoard (long boardCode, String memberId, String boardTitle, String boardContent) {
    }
    // @Override
    // public void updateBoard(String boardCode, String memberId, String boardTitle,
    // String boardContent) {
    // Board existBoard = repository.findByBoardCode(boardCode);
    // if (existBoard != null) {
    // existBoard.setMember(Board.getMember().getMemberId());
    // existBoard.setBoardTitle(boardTitle);
    // existBoard.setBoardContent(boardContent);
    // repository.save(existBoard);
    // }
    // }

    // public void updateSubquery() {
    // Team team = new Team("teamA");
    // em.persist(team);

    // Member newMember = new Member("user1");
    // newMember.setTeam(team);
    // em.persist(newMember);

    // QMember subM = new QMember("subM");
    // QTeam subT = new QTeam("subT");

    // long result = queryFactory
    // .update(member)
    // .set(member.age, member.age.add(10))
    // .where(member.id.in(
    // JPAExpressions.select(subM.id)
    // .from(subM)
    // .join(subM.team, subT)
    // .where(subT.name.eq("teamA"))
    // ))
    // .execute();
    // assertThat(result).isEqualTo(1);
    // }

    @Override
    public void deleteBoard(long boardCode) {
        repository.deleteBySeq(boardCode);
    }

    void pln(String str) {
        System.out.println(str);
    }

}