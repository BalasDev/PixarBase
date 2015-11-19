package by.pixar.uvd.service;


import by.pixar.uvd.domain.Users;

import java.util.List;

public interface UserService {

    Users getUserByLogin(String login);

    List<Users> getUsers();

    void addUser(Users user);

    void deleteUser(Integer id);

    void editUser(Users user);

}
