package vn.iotstar.services.Impl;

import vn.iotstar.dao.UserDao;
import vn.iotstar.dao.Impl.UserDaoImpl;

import vn.iotstar.entity.User;
import vn.iotstar.services.UserService;

public class UserServiceImpl implements UserService{
	
	UserDao userDao = new UserDaoImpl();

	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		
		return userDao.login(username, password);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		        userDao.update(user);
	}



}
