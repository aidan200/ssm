package com.test.service.Impl;

import com.test.bean.User;
import com.test.dao.UserMapper;
import com.test.service.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by 37294 on 2016/7/29.
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;
    public void addUser(User user){
    	userMapper.insert(user);
    }
	@Override
	public void updateUser(User user) {
		userMapper.updateByPrimaryKey(user);
		
	}
	@Override
	public void delUser(long id) {
		userMapper.deleteByPrimaryKey(id);
		
	}
	@Override
	public User findUserById(long id) {
		return userMapper.selectByPrimaryKey(id);
	}
	@Override
	public List<User> findUserAll() {
		return userMapper.selUserAll();
	}
}
