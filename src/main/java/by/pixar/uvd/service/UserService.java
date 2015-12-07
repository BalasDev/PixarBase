package by.pixar.uvd.service;


import by.pixar.uvd.domain.Users;

import java.util.List;

public interface UserService {

    Users getUserByLogin(String login);

    Users getUserById(Integer id);


    List<Users> getUsers();

    void addUser(Users user, Integer rovdId);

    void deleteUser(Integer id);

    void editUser(Users user);

}
