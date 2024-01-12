package vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	
	private int member_idx;
	private String member_name;
	private String member_nickName;
	private String member_email;
	private String member_pwd;
}
