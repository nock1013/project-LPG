package game.LPG.sportsMatch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SportsMatchController {
	@Autowired
	SportsMatchService service;
	
	@RequestMapping("/match.do")
	public String match() {
		return "match";
	}
	
	@RequestMapping(value="/match/matchResist.do", method=RequestMethod.GET)
	public String viewMatchResist() {
		return "matchResist";
	}
	
	@RequestMapping(value="/match/matchResist.do", method=RequestMethod.POST)
	public String insert(SportsMatchDTO sportsMatch) {
		System.out.println("***************시작");
		System.out.println("컨트롤러:"+sportsMatch);
		int result =service.insert(sportsMatch);
		System.out.println("controller:"+result);
		return "redirect:/match.do";
	}
	
	
	@RequestMapping("/match/mchTeamYong.do")
	public String mchTeamYong() {
		return "mchTeamYong";
	}
	
	@RequestMapping(value="/match/list.do", method=RequestMethod.GET)
	public ModelAndView matchlist(MatchSelectDTO ms) {
		ModelAndView mav = new ModelAndView();
		System.out.println("검색한 값=>"+ms);
		List<SportsMatchDTO> list = service.matchlist(ms);
		System.out.println("결과 값=>"+list);
		mav.addObject("matchlist", list);
		if(ms.getMchType().equals("0")) {
			mav.setViewName("listTeam");
		}else {
			mav.setViewName("listIndiv");
		}
		return mav;
	}
	@RequestMapping("/match/mchIndvDetail.do")
	public ModelAndView mchIndvDetail(String mchNo) {
		System.out.println("mchNo=>"+mchNo);
		ModelAndView mav = new ModelAndView();
		
		SportsMatchDTO list = service.MatchIndvDetail(mchNo);
		System.out.println(list);
		mav.addObject("sportsMatchList", list);
		mav.setViewName("mchIndvDetail");
		
		return mav;
	}
	
	@RequestMapping(value="/match/mchTeamDetail.do")
	public ModelAndView mchTeamDetail(String mchNo) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mchNo);
		MatchDetailDTO list = service.MatchTeamDetail(mchNo);
		System.out.println("controller=>"+list);
		mav.addObject("mchTeamDetail", list);
		mav.setViewName("mchTeamDetail");
		return mav;
	}
	@RequestMapping(value="/match/backUpNumAdd.do", method=RequestMethod.GET, produces="application/text;charset=utf-8")
	public @ResponseBody String backUpNumAdd(SportsMatchTeamDTO smt) {
		System.out.println("컨트롤러:"+smt);
		int result = service.backUpNumAdd(smt);
		System.out.println(result);
		return result+"";
	}
	
	@RequestMapping("/match/join.do")
	public String matchJoin(SportsMatchTeamDTO smt) {
		System.out.println("컨트롤러:"+smt);
		int result = service.matchJoin(smt);
		System.out.println(result);
		return "redirect:/match/mchTeamDetail.do";
	}
	
	@RequestMapping("/match/change.do")
	public ModelAndView matchChange(String mchNo) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mchNo);
		SportsMatchDTO smt = service.matchChange(mchNo);
		System.out.println("컨트롤러:"+smt);
		mav.addObject("matchChange", smt);
		mav.setViewName("mchChange");
		return mav;
	}
}
