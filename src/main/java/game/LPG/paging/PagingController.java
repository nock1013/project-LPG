package game.LPG.paging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PagingController {	
	
	@Autowired
	PagingService service;
	PagingDTO pagingDTO;
	
	
	@RequestMapping("/mgrPaging.do")
	public String pagingStart() {
		return "mgrPaging";
	}
	
	
	@RequestMapping(value="/match/mgrMatchList.do")
	public ModelAndView mgrMchList(String pagenum, String contentnum) {
		System.out.println(pagenum);
		System.out.println(contentnum);
		ModelAndView mav = new ModelAndView();
		PagingDTO pagingDTO = service.set(pagenum, contentnum);	
		System.out.println(pagingDTO.getPagenum());
		System.out.println(pagenum);
		System.out.println(contentnum);
		if(pagingDTO.getPagenum()==0) {
		List<Integer> testlist = service.testlist(pagingDTO.getPagenum()*pagingDTO.getContentnum(), pagingDTO.getPagenum()*pagingDTO.getContentnum()+pagingDTO.getContentnum());
		System.out.println(testlist);
		mav.addObject("contentnum",pagingDTO.getContentnum());
		mav.addObject("list",testlist);
		mav.addObject("page",pagingDTO);
		mav.setViewName("mgrPaging");
		return mav;
		}else {
			List<Integer> testlist = service.testlist((pagingDTO.getPagenum()*pagingDTO.getContentnum())+1, pagingDTO.getPagenum()*pagingDTO.getContentnum()+pagingDTO.getContentnum());
			System.out.println(testlist);
			mav.addObject("contentnum",pagingDTO.getContentnum());
			mav.addObject("list",testlist);
			mav.addObject("page",pagingDTO);
			mav.setViewName("mgrPaging");
			return mav;
		}
		
	}
	@RequestMapping("/IndivPaging.do")
	public String IndivpagingStart() {
		return "IndivPaging";
	}
	
	@RequestMapping(value="/match/IndivMatchList.do")
	public ModelAndView IndivMchList(String pagenum, String contentnum) {
		System.out.println(pagenum);
		System.out.println(contentnum);
		ModelAndView mav = new ModelAndView();
		PagingDTO pagingDTO = service.set(pagenum, contentnum);	
		System.out.println(pagingDTO.getPagenum());
		System.out.println(pagenum);
		System.out.println(contentnum);
		if(pagingDTO.getPagenum()==0) {
		List<Integer> testlist = service.testlist(pagingDTO.getPagenum()*pagingDTO.getContentnum(), pagingDTO.getPagenum()*pagingDTO.getContentnum()+pagingDTO.getContentnum());
		System.out.println(testlist);
		mav.addObject("contentnum",pagingDTO.getContentnum());
		mav.addObject("list",testlist);
		mav.addObject("page",pagingDTO);
		mav.setViewName("mgrPaging");
		return mav;
		}else {
			List<Integer> testlist = service.testlist((pagingDTO.getPagenum()*pagingDTO.getContentnum())+1, pagingDTO.getPagenum()*pagingDTO.getContentnum()+pagingDTO.getContentnum());
			System.out.println(testlist);
			mav.addObject("contentnum",pagingDTO.getContentnum());
			mav.addObject("list",testlist);
			mav.addObject("page",pagingDTO);
			mav.setViewName("mgrPaging");
			return mav;
		}
		
	}
	
}
