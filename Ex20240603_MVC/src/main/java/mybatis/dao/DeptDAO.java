package mybatis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.service.FactoryService;
import mybatis.vo.DeptVO;

public class DeptDAO {

	// 나중에 useBean으로 등록하여 사용할 객체
	public static DeptVO[] getList() {

		DeptVO[] d_ar = null;
		
		System.out.println("");
		
		SqlSession ss = FactoryService.getFactory().openSession(); 
		
		List<DeptVO> d_list = ss.selectList("dept.all");
		ss. close();
		
		// list의 요소들을 배열로 변환하자!
		if(d_list != null && !d_list.isEmpty()) {
			d_ar = new DeptVO[d_list.size()];
			d_list.toArray(d_ar);
		}
		
		return d_ar;
	}
	
	
}
