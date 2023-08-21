package everest.hotel.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@SequenceGenerator(name = "FILE_CODE_GENERATOR", sequenceName = "FILE_CODE", initialValue = 1, allocationSize = 1)
@Table(name = "file_table")
public class File {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "FILE_CODE_GENERATOR")
    @Column(name = "file_code")
    private long fileCode;

    @Column(name = "file_ogname")
    private String fileOgname;

    @Column(name = "file_savename")
    private String fileSavename;

    @Column(name = "file_savepath")
    private String fileSavepath;

    @Column(name = "file_size")
    private String fileSize;

    // ManyToOne으로 게시판 걸어야함
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "board_code")
    private Board board;
}