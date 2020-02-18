package game.LPG.paging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class PagingServiceImpl implements PagingService {
	@Autowired
	@Qualifier("pagingDAO")
	PagingDAO dao;	

	@Override
	public List<Integer> testlist(int pagenum, int contentnum) {
		
		return dao.testlist(pagenum, contentnum);
	}

	@Override
	public int testcount() {
		
		return dao.testcount();
	}

	@Override
	public PagingDTO set(String pagenum, String contentnum) {
		PagingDTO pagingDTO = new PagingDTO();
		int cpagenum = Integer.parseInt(pagenum);
		int ccontentnum=Integer.parseInt(contentnum);
		pagingDTO.setTotalcount(dao.testcount());
		pagingDTO.setPagenum(cpagenum-1);
		pagingDTO.setContentnum(ccontentnum);
		pagingDTO.setCurrentblock(cpagenum);
		pagingDTO.setLastblock(pagingDTO.getTotalcount());
		
		pagingDTO.prevnext(cpagenum);
		pagingDTO.setStartPage(pagingDTO.getCurrentblock());
		pagingDTO.setEndPage(pagingDTO.getLastblock(), pagingDTO.getCurrentblock());
		return pagingDTO;
		
	}

	@Override
	public List<Integer> indivlist(int pagenum, int contentnum) {
		return dao.indivlist(pagenum, contentnum);
	}

	@Override
	public int indivcount() {
		return dao.indivcount();
	}

	
}
