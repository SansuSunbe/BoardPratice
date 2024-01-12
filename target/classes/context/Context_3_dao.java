package context;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import dao.BoardDAO;
import dao.MemberDAO;

@Configuration
public class Context_3_dao {
	
	@Bean
	public MemberDAO member_dao() {
		return new MemberDAO();
	}
	
	@Bean
	public BoardDAO board_dao() {
		return new BoardDAO();
	}
	
	
	
}




