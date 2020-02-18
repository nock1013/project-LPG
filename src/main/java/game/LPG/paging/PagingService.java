package game.LPG.paging;

import java.util.List;

public interface PagingService {
	public PagingDTO set(String pagenum,String contentnum);
	public List<Integer> testlist(int pagenum, int contentnum);
	public int testcount();
	public List<Integer> indivlist(int pagenum, int contentnum);
	public int indivcount();
	
	
}
