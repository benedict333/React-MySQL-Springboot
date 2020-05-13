package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.claim.entity.User;
@Repository

public interface UserRepo extends JpaRepository <User, String >{
	
	@Query("select S from User S where userName=?1 and password=?2")
	public User login(String userName, String password);
	
	
}
