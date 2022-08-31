package Service;

import java.util.List;

import dao.MemberDAO;

import vo.MemberVO;


public class MemberService {
	
	private MemberDAO dao;

	public MemberService(MemberDAO dao) {
		this.dao = dao;
	}
	
	public List<MemberVO> selectList(){
		return dao.selectList();
	}
	
	public int insert(MemberVO vo) {
		return dao.insert(vo);
	}
	
	public int delete(int num) {
		int res = dao.delete(num);
		
		return res;
	}
	
	public MemberVO selectOne(int num) {
		MemberVO vo = dao.selectOne(num);
		
		return vo;
	}
	
	public int update(MemberVO vo) {
		
		int res = dao.update(vo);
		
		return res;
	}
	
	public int reset1() {
		return dao.reset1();
	}
	
	public int reset2() {
		return dao.reset2();
	}
	
	
	
	
	

}
