package com.app.fscolle.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.fscolle.entity.User;
import com.app.fscolle.repository.UserRepository;

@Controller
public class myPageController {

	@Autowired
	private UserRepository userRepository;

	@RequestMapping(path = "/myPage", method = RequestMethod.GET)
	public String helloWorld(Model model) {

		// user情報を取得
		User userInfo = userRepository.findAll().get(0);

		model.addAttribute("userName", userInfo.getUserName());
		model.addAttribute("mailAddress", userInfo.getMailAddress());
		model.addAttribute("password", userInfo.getPassword());
		return "myPage";
	}

	/**
	 * user情報を取得する
	 * @param userId
	 * @return
	 */
	public Optional<User> getUser(Long userId) {
		userId =0L;
		return userRepository.findById(userId);
	}

	/**
	 * user情報を更新する
	 * @param userId
	 * @return
	 */
	// POST用のパラメータを受け取る
//	@RequestMapping(value = {"/updateUser"}, method = {RequestMethod.POST})
/*	public String updateUser(
			@RequestParam(value="userName", required = true) String userName,
			@RequestParam(value="password", required = true) String password,
			@RequestParam(value="mailAddress", required = true) String mailAddress) {
		User userInfo = new User();
		userRepository.save(userInfo);
		return "myPage";
	}*/
}