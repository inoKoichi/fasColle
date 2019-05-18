package com.app.fscolle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.app.fscolle.entity.User;
import com.app.fscolle.form.MyPageForm;
import com.app.fscolle.repository.UserRepository;
import com.app.fscolle.service.UserService;

@Controller
@RequestMapping(path = "/myPage")
public class MyPageController {

	@Autowired
	private UserRepository userRepository;

	@ModelAttribute
	MyPageForm setUpForm() {
		return new MyPageForm();
	}

	@GetMapping("")
	public String index(Model model) {

		// user情報を取得
		User user = userRepository.findAll().get(0);
		model.addAttribute("user", user);
		model.addAttribute("myPageForm", new MyPageForm());

		return "myPage";
	}

	/**
	 * user情報を更新する
	 * @param userId
	 * @return
	 */
	// POST用のパラメータを受け取る
	@PostMapping("update")
	@ResponseStatus(value=HttpStatus.OK)
	public String updateUser(@ModelAttribute User user, Model model) {
//		public String updateUser(@ModelAttribute MyPageForm myPage, Model model) {
//		User user = myPage.user;
		UserService userService = new UserService();
		userService.updata(user);
//		userRepository.save(userInfo);
		model.addAttribute("user", user);

		return "myPage";
	}
}