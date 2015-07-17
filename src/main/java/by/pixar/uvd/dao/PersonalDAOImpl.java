package by.pixar.uvd.dao;

import by.pixar.uvd.domain.Personal;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PersonalDAOImpl implements PersonalDAO {

    @Autowired
    private SessionFactory sessionFactory;


    public void addPersonal(Personal personal) {
        sessionFactory.getCurrentSession().save(personal);
    }


    public List<Personal> listPersonal() {
        return sessionFactory.getCurrentSession().createQuery("from Personal").list();
    }


    public void deletePersonal(Integer id) {
        Personal personal = (Personal) sessionFactory.getCurrentSession().load(Personal.class, id);
        if (null != personal) {

            sessionFactory.getCurrentSession().delete(personal);

        }
    }
}
