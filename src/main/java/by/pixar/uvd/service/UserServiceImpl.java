package by.pixar.uvd.service;


import by.pixar.uvd.dao.UserDAO;
import by.pixar.uvd.domain.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO userDAO;

    @Override
    @Transactional
    public Users getUserByLogin(String login) {
        return userDAO.getUserByLogin(login);
    }

    @Override
    @Transactional
    public Users getUserById(Integer id) {
        return userDAO.getUserById(id);
    }


    @Override
    @Transactional
    public List<Users> getUsers() {
        return userDAO.getUsers();
    }

    @Override
    @Transactional
    public void addUser(Users user, Integer rovdId, Integer roleId) {
        userDAO.addUser(user, rovdId, roleId);
    }

    @Override
    @Transactional
    public void deleteUser(Integer id) {
         userDAO.deleteUser(id);
    }

    @Override
    @Transactional
    public void editUser(Users user) {
        userDAO.editUser(user);
    }
}
