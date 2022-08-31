package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


import vo.MemberVO;


public class MemberDAO {
	
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<MemberVO> selectList(){
		return sqlSession.selectList("test.list");
	}
	
	public int insert(MemberVO vo) {
		return sqlSession.insert("test.insert",vo);
	}
	
	public int delete(int num) {
		int res = sqlSession.delete("test.delete", num);
		
		return res;
	}
	
	public MemberVO selectOne(int num) {
		MemberVO vo = sqlSession.selectOne("test.selectOne",num);
		
		return vo;
	}
	
	public int update(MemberVO vo) {
		
		int res = sqlSession.update("test.update", vo);
		
		return res;
	}
	
	public int reset1() {
		int result = sqlSession.update("test.reset1");
		return result;
	}
	
	public int reset2() {
		int result = sqlSession.update("test.reset2");
		return result;
	}
	
	
	

	
	
	
	

}
