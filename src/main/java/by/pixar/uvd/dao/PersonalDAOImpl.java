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
        // Temporary fix
        personal.setBirthday(personal.getStrBirthday());

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


    public List<Personal> findPersonal(String field, String var) {
        return sessionFactory.getCurrentSession().createQuery("from Personal where " + field + " = " +"'"+var+"'").list();
    }


    public void editPersonal(Personal personal) {
        Personal person = (Personal) sessionFactory.getCurrentSession().load(Personal.class, personal.getId());
       //person = personal;
        person.setFirstName(personal.getFirstName());
        person.setLastName(personal.getLastName());
        person.setSecondName(personal.getSecondName());
        person.setRank(personal.getRank());
        // Rebuild for date
        person.setStrBirthday(personal.getStrBirthday());
        //
        person.setPlaceOfBorn(personal.getPlaceOfBorn());
        person.setEducation(personal.getEducation());
        person.setGraduated(personal.getGraduated());
        person.setSpeciality(personal.getSpeciality());
        person.setForeclosure(personal.getForeclosure());
        person.setForeigLang(personal.getForeigLang());
        person.setDegree(personal.getDegree());
        person.setAbroad(personal.getAbroad());
        person.setElection(personal.getElection());
        person.setStateAwards(personal.getStateAwards());



        if (null != person) {
            sessionFactory.getCurrentSession().update(person);
        }
    }


}
