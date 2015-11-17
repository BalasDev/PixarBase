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
    public List<Users> getUsers() {
        return sessionFactory.getCurrentSession().createQuery("from Users").list();
    }

    @Override
    public boolean addUser(Users user) {

        //
        if((getUserByLogin(user.getLogin())==null)) {

            sessionFactory.getCurrentSession().save(user);
            msg=true;
        }
        else
            msg=false;

     return msg;
    }

    @Override
    public boolean deleteUser(Integer id) {
        Users user = (Users) sessionFactory.getCurrentSession().load(Users.class,id);
        if (!user.equals(null)) {
            sessionFactory.getCurrentSession().delete(user);
            msg=true;
        }
        else
            msg=false;

        return msg;
    }

   /* public void editUser(Users user){

        Users users = (Users)sessionFactory.getCurrentSession().load()
    }*/
}
