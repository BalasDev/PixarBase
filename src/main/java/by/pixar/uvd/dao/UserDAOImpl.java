package by.pixar.uvd.dao;


import by.pixar.uvd.domain.Users;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Users getUserByLogin(String login) {
        System.out.println("LOGIN " + login);
        String strQuery = "from Users u where u.login =:login";
        Query query = sessionFactory.getCurrentSession().createQuery(strQuery);
        query.setParameter("login", login);
        if (!query.list().equals(null))
        return (Users)query.list().get(0);
        else
        return null;
    }

    @Override
    public List<Users> getUsers() {
        return sessionFactory.getCurrentSession().createQuery("from Users").list();
    }

    @Override
    public void addUser(Users user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public void deleteUser(Integer id) {
        Users user = (Users) sessionFactory.getCurrentSession().load(Users.class,id);
        if (!user.equals(null))
            sessionFactory.getCurrentSession().delete(user);
    }
}
