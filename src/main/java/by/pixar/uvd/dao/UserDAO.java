package by.pixar.uvd.dao;


import by.pixar.uvd.domain.Users;

import java.util.List;

public interface UserDAO {

    Users getUserByLogin(String login);

    Users getUserById(Integer id);

    List<Users> getUsers();

    void addUser(Users user);

    void deleteUser(Integer id);

    void editUser(Users user);
}
