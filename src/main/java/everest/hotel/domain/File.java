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
    private String file_code;

    private String file_ogname;
    private String file_savename;
    private String file_savepath;
    private String file_size;

    // ManyToOne으로 게시판 걸어야함
    @ManyToOne
    @JoinColumn
    private Board board;
}