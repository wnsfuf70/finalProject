package kos.triple.project.persistence.chul;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kos.triple.project.vo.Epilogue_courseVO;
import kos.triple.project.vo.WhereVO;

@Repository
public class EpilogueDAOImpl implements EpilogueDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	//  return type of location method will be changed to List<Trip_location_info>.
	@Override
	public List<WhereVO> location(Map<String, Object> map) {

		EpilogueDAO eDao = sqlSession.getMapper(EpilogueDAO.class);
		
		return eDao.location(map);
	}

	@Override
	public int getNumOfEpil() {

		EpilogueDAO eDao = sqlSession.getMapper(EpilogueDAO.class); 
		
		return eDao.getNumOfEpil();
	}

	@Override
	public int initialInsertPro(Map<String, Object> map) {

		EpilogueDAO eDao = sqlSession.getMapper(EpilogueDAO.class);

		return eDao.initialInsertPro(map);
	}

	@Override
	public int insertEpilCoursePro(Map<String, Object> map) {

		EpilogueDAO eDao = sqlSession.getMapper(EpilogueDAO.class);
		
		return eDao.insertEpilCoursePro(map);
	}

	@Override
	public int getNumOfEpilCourse(Map<String, Object> map1) {

		EpilogueDAO eDao = sqlSession.getMapper(EpilogueDAO.class);
		
		return eDao.getNumOfEpilCourse(map1);
	}

	@Override
	public List<Epilogue_courseVO> getListOfEpilCourse(Map<String, Object> map2) {

		EpilogueDAO eDao = sqlSession.getMapper(EpilogueDAO.class);
		
		return eDao.getListOfEpilCourse(map2);
	}

	@Override
	public int getNumOfVisitOrder(Map<String, Object> map) {
		
		EpilogueDAO eDao = sqlSession.getMapper(EpilogueDAO.class);
		
		return eDao.getNumOfVisitOrder(map);
	}
	
	
}
