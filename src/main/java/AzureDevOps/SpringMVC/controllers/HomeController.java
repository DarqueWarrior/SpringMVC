package AzureDevOps.SpringMVC.controllers;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value="/")
	public ModelAndView index() {
      Map<String, String> env = System.getenv();
      String key = env.get("APPLICATION_INSIGHTS_IKEY");

		ModelAndView result = new ModelAndView("index");
      result.addObject("Title", "Home Page");
      result.addObject("instrumentationKey", key);
		return result;
	}
	
	@RequestMapping(value="/about")
	public ModelAndView about() {
      Map<String, String> env = System.getenv();
      String key = env.get("APPLICATION_INSIGHTS_IKEY");

		ModelAndView result = new ModelAndView("about");
		result.addObject("Title", "About");
		result.addObject("Message", "Your application description page.");
      result.addObject("instrumentationKey", key);
		return result;
	}
	
	@RequestMapping(value="/contact")
	public ModelAndView contact() {
      Map<String, String> env = System.getenv();
      String key = env.get("APPLICATION_INSIGHTS_IKEY");

		ModelAndView result = new ModelAndView("contact");
		result.addObject("Title", "Contact");
		result.addObject("Message", "Your contact page.");
      result.addObject("instrumentationKey", key);
		return result;
	}
}
