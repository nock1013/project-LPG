package game.LPG.sportsMatch;

import java.util.List;

public interface SportsMatchService {
	int insert(SportsMatchDTO sportsMatch);
	List<SportsMatchDTO> matchlist(MatchSelectDTO select); 
	SportsMatchDTO MatchIndvDetail(String mchNo);
	MatchDetailDTO MatchTeamDetail(String mchNo);
	int backUpNumAdd(SportsMatchTeamDTO smt);
	int matchJoin(SportsMatchTeamDTO smt);
	SportsMatchDTO matchChange(String mchNo);
}
