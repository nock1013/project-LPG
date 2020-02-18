package game.LPG.sportsMatch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class SportsMatchServiceImpl implements SportsMatchService {
	@Autowired
	@Qualifier("sportsMatchDAO")
	SportsMatchDAO dao;
	
	@Override
	public int insert(SportsMatchDTO sportsMatch) {
		int result = 0;
		if(sportsMatch.getMchType().equals("0")) {
			System.out.println("servicecs"+sportsMatch);
			result = dao.insert(sportsMatch);
			System.out.println(result);
			result= result+ dao.insertTeam(sportsMatch);
			System.out.println(result);
			return result;
		}else if(sportsMatch.getMchType().equals("1")){
			System.out.println("servicecs"+sportsMatch);
			result = dao.insert(sportsMatch);
			System.out.println(result);
			result= result+ dao.insertIndiv(sportsMatch);
			System.out.println(result);
			return result;
		}else {
			return result;
		}
	}
	
	@Override
	public List<SportsMatchDTO> matchlist(MatchSelectDTO ms) {
		System.out.println("service:"+ms);
		return dao.matchlist(ms);
	}
	
	@Override
	public SportsMatchDTO MatchIndvDetail(String mchNo) {
		SportsMatchDTO list = dao.MatchIndvDetail(mchNo); 
		return list;
	}
	
	@Override
	public MatchDetailDTO MatchTeamDetail(String mchNo) {
		MatchDetailDTO list = dao.MatchTeamDetail(mchNo); 
		return list;
	}
	
	@Override
	public int backUpNumAdd(SportsMatchTeamDTO smt) {
		System.out.println("서비스:"+smt);
		return dao.backUpNumAdd(smt);
	}

	@Override
	public int matchJoin(SportsMatchTeamDTO smt) {
		System.out.println("서비스:"+smt);
		int result = dao.matchJoin(smt);
		System.out.println("서비스 결과:"+result);
		return result;
	}

	@Override
	public SportsMatchDTO matchChange(String mchNo) {
		SportsMatchDTO sm = dao.matchChange(mchNo);
		System.out.println(sm);
		return sm;
	}

}
