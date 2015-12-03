package by.pixar.uvd.dao;


import by.pixar.uvd.domain.Rovd;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class RovdDAOImpl implements RovdDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<Rovd> listRovd() {
        return sessionFactory.getCurrentSession().createQuery("from Rovd").list();
    }
}
