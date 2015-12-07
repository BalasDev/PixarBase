package by.pixar.uvd.dao;


import by.pixar.uvd.domain.Roles;
import by.pixar.uvd.domain.Rovd;
import by.pixar.uvd.domain.Users;
import by.pixar.uvd.exceptions.UserExistException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private boolean msg;

    @Override
    public Users getUserByLogin(String login) {
        System.out.println("LOGIN " + login);
        String strQuery = "from Users u where u.login =:login";
        Query query = sessionFactory.getCurrentSession().createQuery(strQuery);
        query.setParameter("login", login);
        System.out.println("size " + query.list().size());
        if(query.list().size()!=0)
         return (Users)query.list().get(0);
        else
        return null;
    }

    @Override
    public Users getUserById(Integer id) {
        Users user = (Users) sessionFactory.getCurrentSession().get(Users.class, id);
        return user;
   /*     System.out.println("Id " + id);
        String strQuery = "from Users u where u.id =:id";
        Query query = sessionFactory.getCurrentSession().createQuery(strQuery);
        query.setParameter("id", id);
        System.out.println("size " + query.list().size());
        if(query.list().size()!=0)
            return (Users)query.list().get(0);
        else
            return null;*/
    }

    @Override
    public List<Users> getUsers() {
        return sessionFactory.getCurrentSession().createQuery("from Users").list();
    }

    @Override
    public void addUser(Users user, Integer rovdId) {

        //
        if((getUserByLogin(user.getLogin())==null)) {

            Rovd rovd = (Rovd) sessionFactory.getCurrentSession().load(Rovd.class, rovdId);
            user.setRovd(rovd);
            sessionFactory.getCurrentSession().save(user);

        }
        else
            throw new UserExistException();


    }

    @Override
    public void deleteUser(Integer id) {
        Users user = (Users) sessionFactory.getCurrentSession().load(Users.class,id);
        if (user!=null) {
            sessionFactory.getCurrentSession().delete(user);
        }
    }
    @Override
    public void editUser(Users user){

    Roles role = (Roles)sessionFactory.getCurrentSession().load(Roles.class,user.getRole().getId());
    user.setRole(role);
    Users users =(Users)sessionFactory.getCurrentSession().load(Users.class,user.getId());
 //       Users users = getUserByLogin(user.getLogin());

        System.out.println(users.getLogin() + " = "+ user.getLogin() +
         " " + getUserByLogin(user.getLogin()));
        if((users.getLogin().equals(user.getLogin()))||(!(users.getLogin().equals(user.getLogin()))&&(getUserByLogin(user.getLogin())==null))) {
            sessionFactory.getCurrentSession().clear();
            sessionFactory.getCurrentSession().saveOrUpdate(user);
        }

        else
            throw new UserExistException();

    }
}
