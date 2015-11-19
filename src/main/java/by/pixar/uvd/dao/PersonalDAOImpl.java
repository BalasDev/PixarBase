package by.pixar.uvd.dao;

import by.pixar.uvd.domain.Personal;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PersonalDAOImpl implements PersonalDAO {

   // private static final String query = " ";
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
        if (personal!=null) {

            sessionFactory.getCurrentSession().delete(personal);

        }
    }


    public List<Personal> findPersonal(String field, String var, String stDate, String endDate) {
        Query query =null;
        String beginOfQuery = "from Personal where extract(year from BIRTHDAY)  ";
        // var=0 end =0
        if (var.equals("") && endDate.equals("")) {
            query = sessionFactory.getCurrentSession().createQuery(beginOfQuery+">=:stDate");
            query.setInteger("stDate",Integer.parseInt(stDate));
         //   return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  >= " + "'" + stDate + "'").list();
        } else
        // var=0 and st=0
        if (var.equals("") && stDate.equals("")) {
            query = sessionFactory.getCurrentSession().createQuery(beginOfQuery+"<=:endDate");
            query.setInteger("endDate", Integer.parseInt(endDate));
            //return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  <= " + "'" + endDate + "'").list();
        } else
        //var=0
        if (var.equals("") && !stDate.equals("") && !endDate.equals("")) {
            query = sessionFactory.getCurrentSession().createQuery(beginOfQuery+"<=:endDate and extract(year from BIRTHDAY)>=:stDate");
            query.setInteger("stDate", Integer.parseInt(stDate));
            query.setInteger("endDate", Integer.parseInt(endDate));
          //  return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  <= " + "'" + endDate + "'"
          //  + " and extract(year from BIRTHDAY) >= " + "'" + stDate + "'").list();
        } else
        // end =0
        if (endDate.equals("")&& !var.equals("") && !stDate.equals("")) {
            query = sessionFactory.getCurrentSession().createQuery(beginOfQuery+">=:stDate and " + field + " =:var");
            query.setInteger("stDate", Integer.parseInt(stDate));
            query.setParameter("var", var);
           // return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  >= " + "'" + stDate + "'"
           //         + " and " + field + " = " + "'" + var + "'").list();
        } else
        //st=0
        if ( stDate.equals("")&& !var.equals("") && !endDate.equals("")) {
            query = sessionFactory.getCurrentSession().createQuery(beginOfQuery+"<=:endDate and " + field + " =:var");
            query.setInteger("endDate", Integer.parseInt(endDate));
            query.setParameter("var", var);
            // return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  <= " + "'" + endDate + "'"
           //    +" and " + field + " = " + "'" + var + "'").list();
        } else
        // val!=0 st!=0 end!=0
        if (!var.equals("") && !stDate.equals("") && !endDate.equals("")) {

            query = sessionFactory.getCurrentSession().createQuery(beginOfQuery+"<=:endDate and extract(year from BIRTHDAY) >=:stDate and " + field + " =:var");
            query.setInteger("stDate", Integer.parseInt(stDate));
            query.setInteger("endDate", Integer.parseInt(endDate));
            query.setParameter("var", var);
         //   return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  <= " + "'" + endDate + "'"
         //           + " and extract(year from BIRTHDAY) >= " + "'" + stDate + "'"
         //           +" and " + field + " = " + "'" + var + "'").list();
        } else
        //var=1
        {
            query = sessionFactory.getCurrentSession().createQuery("from Personal where " + field + " =:var");
            query.setParameter("var", var);
            //   return sessionFactory.getCurrentSession().createQuery("from Personal where " + field + " = " + "'" + var + "'").list();
        }



     return query.list();
    }


    public void editPersonal(Personal personal) {
       /* Personal person = (Personal) sessionFactory.getCurrentSession().load(Personal.class, personal.getId());
       //person = personal;
        person.setFirstName(personal.getFirstName());
        person.setLastName(personal.getLastName());
        person.setSecondName(personal.getSecondName());
        person.setPersonalNumber(personal.getPersonalNumber());
        person.setRank(personal.getRank());
        person.setCallOfDuty(personal.getCallOfDuty());
        person.setBirthday(personal.getStrBirthday());
        person.setStrBirthday(personal.getStrBirthday());
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
        person.setFired(personal.getFired());
        person.setWorkPlace(personal.getWorkPlace());
        person.setRovd(personal.getRovd());

        if (null != person) {
            sessionFactory.getCurrentSession().update(person);
        }*/
        sessionFactory.getCurrentSession().saveOrUpdate(personal);
    }


}
