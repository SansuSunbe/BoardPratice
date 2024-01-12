package vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {

	private int board_idx;
	private String board_title;
	private String board_content;
	private String board_regdate;
	private String board_depth;
	private String board_fileName;
	private MultipartFile photo;
}
