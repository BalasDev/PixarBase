package by.pixar.uvd.dao;


import by.pixar.uvd.domain.Users;

import java.util.List;

public interface UserDAO {

    Users getUserByLogin(String login);

    List<Users> getUsers();
}
