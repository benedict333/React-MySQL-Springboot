package com.claim.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Product;
import com.claim.entity.User;
import com.claim.repository.UserRepo;

@Service
public class UserService {
	@Autowired
	UserRepo userRepo;

	public void saveUser(User user) {
		userRepo.save(user);
	}

	public ArrayList<User> findAll() {
		return (ArrayList<User>) userRepo.findAll();

	}

	public User login(String userName, String password) {
		return userRepo.login(userName, password);

	}

}
