package com.app.fscolle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//import com.yuka.artWorks.repository.Actor;
//import com.yuka.artWorks.repository.ActorRepository;
//import com.yuka.artWorks.repository.Prefecture;
//import com.yuka.artWorks.repository.PrefectureRepository;

@Controller
public class shopSearchController {
	@RequestMapping("/shopSearch" )
	public String helloWorld(Model model) {
		model.addAttribute("message", "こんにちは世界");
		return "shopSearch";
	}
}