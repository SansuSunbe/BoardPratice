package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import vo.MemberVO;

public class MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	// 회원가입
	public int register(MemberVO vo) {
		return sqlSession.insert("m.member_register", vo);
	}

}
