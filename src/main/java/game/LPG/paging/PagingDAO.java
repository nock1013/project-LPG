package game.LPG.paging;

import java.util.List;

public interface PagingDAO {
	public List<Integer> testlist(int pagenum, int contentnum);
	public int testcount();
	public List<Integer> indivlist(int pagenum, int contentnum);
	public int indivcount();
	
}
