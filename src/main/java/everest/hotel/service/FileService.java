package everest.hotel.service;

import java.util.List;
import everest.hotel.domain.File;

public interface FileService {

    // 파일업로드
    File uploadFile(String file_code, String file_ogname, String file_savename, String file_savepath,
            String file_size, String board_code);

    // 파일정보 조회
    File getFileInfo(String file_code);

    // 특정 게시물에 첨부된 파일목록 조회
    List<File> getFileForBoard(String board_code);

    // 파일정보 수정
    File updateFileInfo(String file_code);

    // 파일정보 삭제
    void deleteFile(String file_code);
}