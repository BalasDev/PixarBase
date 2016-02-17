package by.pixar.uvd.dao;

import by.pixar.uvd.domain.Personal;
import by.pixar.uvd.domain.Users;
import by.pixar.uvd.service.UserService;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PersonalDAOImpl implements PersonalDAO {

   // private static final String query = " ";
    @Autowired
    private SessionFactory sessionFactory;
    @Autowired
    private UserService userService;


    public boolean checkRole(){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users users=userService.getUserByLogin(user.getUsername());
        if (users.getRole().getName().equals("ADMIN"))
            return true;
        else
            return false;
    }

    public void addPersonal(Personal personal) {


        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        System.out.println(name);
        Users users=userService.getUserByLogin(name);
        personal.setUsers(users);

        sessionFactory.getCurrentSession().save(personal);
    }


    public List<Personal> listPersonal() {

        String strQuery ="from Personal p ";
        if(checkRole()){
            return sessionFactory.getCurrentSession().createQuery(strQuery).list();
        }
        else {
            strQuery = "select p from Personal p inner join p.rovd r  where r.name = :rovd";
            Query query = sessionFactory.getCurrentSession().createQuery(strQuery);
            User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            String name = user.getUsername();
            Users users = userService.getUserByLogin(name);
            sessionFactory.getCurrentSession().createQuery(strQuery);
            query.setParameter("rovd", users.getRovd().getName());

            return query.list();
        }
    }


    public void deletePersonal(Integer id) {
        Personal personal = (Personal) sessionFactory.getCurrentSession().load(Personal.class, id);
        if (personal!=null) {

            sessionFactory.getCurrentSession().delete(personal);

        }
    }


    public List<Personal> findPersonal(String field, String var, String stDate, String endDate, String dateSearching) {

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String name = user.getUsername();
        Users users = userService.getUserByLogin(name);
        Query query =null;
        String beginOfQuery=null;
        String exeQuery=null;
        String dateParam=null;
        if (!(dateSearching==null)) {
            for (DateSearch d : DateSearch.values()) {
                if (d.val()==Integer.valueOf(dateSearching)){
                    dateParam=d.toString();
                }
            }
        }
//        if (checkRole()) {
//             beginOfQuery = "from Personal where extract(year from BIRTHDAY)  ";
//       } else{
             beginOfQuery = "select p from Personal p inner join p.rovd r where extract(year from " + dateParam+")  ";

 //       }
        // var=0 end =0
        if (var.equals("") && endDate.equals("")) {
            exeQuery=beginOfQuery+">=:stDate";
            if (checkRole()) {
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("stDate", Integer.parseInt(stDate));
            } else {
                exeQuery=exeQuery+" and r.name = :rovd";
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("stDate", Integer.parseInt(stDate));
                query.setParameter("rovd", users.getRovd().getName());
            }
         //   return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  >= " + "'" + stDate + "'").list();
        } else
        // var=0 and st=0
        if (var.equals("") && stDate.equals("")) {
            exeQuery=beginOfQuery+"<=:endDate";
            if (checkRole()) {
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("endDate", Integer.parseInt(endDate));
            } else {
                exeQuery=exeQuery+" and r.name = :rovd";
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("endDate", Integer.parseInt(stDate));
                query.setParameter("rovd", users.getRovd().getName());
            }
            //return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  <= " + "'" + endDate + "'").list();
        } else
        //var=0
        if (var.equals("") && !stDate.equals("") && !endDate.equals("")) {
            exeQuery=beginOfQuery+"<=:endDate and extract(year from " + dateParam+")>=:stDate";
            if (checkRole()) {
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("stDate", Integer.parseInt(stDate));
                query.setInteger("endDate", Integer.parseInt(endDate));
            } else {
                exeQuery=exeQuery+" and r.name = :rovd";
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("stDate", Integer.parseInt(stDate));
                query.setInteger("endDate", Integer.parseInt(endDate));
                query.setParameter("rovd", users.getRovd().getName());

            }
          //  return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  <= " + "'" + endDate + "'"
          //  + " and extract(year from BIRTHDAY) >= " + "'" + stDate + "'").list();
        } else
        // end =0
        if (endDate.equals("")&& !var.equals("") && !stDate.equals("")) {
            if (!field.equals("rovd"))
              exeQuery=beginOfQuery+">=:stDate and " + field + " =:var";
            else
              exeQuery=beginOfQuery+">=:stDate and r.name = :var";
            if (checkRole()) {
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("stDate", Integer.parseInt(stDate));
                query.setParameter("var", var);
            } else {
                exeQuery=exeQuery+" and r.name = :rovd";
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("stDate", Integer.parseInt(stDate));
                query.setParameter("var", var);
                query.setParameter("rovd", users.getRovd().getName());
            }
           // return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  >= " + "'" + stDate + "'"
           //         + " and " + field + " = " + "'" + var + "'").list();
        } else
        //st=0
        if ( stDate.equals("")&& !var.equals("") && !endDate.equals("")) {
            if (!field.equals("rovd"))
                exeQuery=beginOfQuery+"<=:endDate and " + field + " =:var";
            else
                exeQuery=beginOfQuery+"<=:endDate and r.name =:var";
            if (checkRole()) {
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("endDate", Integer.parseInt(endDate));
                query.setParameter("var", var);
            } else {
                exeQuery=exeQuery+" and r.name = :rovd";
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("endDate", Integer.parseInt(endDate));
                query.setParameter("var", var);
                query.setParameter("rovd", users.getRovd().getName());

            }
            // return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  <= " + "'" + endDate + "'"
           //    +" and " + field + " = " + "'" + var + "'").list();
        } else
        // val!=0 st!=0 end!=0
        if (!var.equals("") && !stDate.equals("") && !endDate.equals("")) {
            if (!field.equals("rovd"))
                exeQuery=beginOfQuery+"<=:endDate and extract(year from " + dateParam+") >=:stDate and " + field + " =:var";
            else
                exeQuery=beginOfQuery+"<=:endDate and extract(year from " + dateParam+") >=:stDate and r.name =:var";
            if (checkRole()) {
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("stDate", Integer.parseInt(stDate));
                query.setInteger("endDate", Integer.parseInt(endDate));
                query.setParameter("var", var);
            } else {
                exeQuery=exeQuery+" and r.name = :rovd";
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setInteger("stDate", Integer.parseInt(stDate));
                query.setInteger("endDate", Integer.parseInt(endDate));
                query.setParameter("var", var);
                query.setParameter("rovd", users.getRovd().getName());
            }
         //   return sessionFactory.getCurrentSession().createQuery("from Personal where extract(year from BIRTHDAY)  <= " + "'" + endDate + "'"
         //           + " and extract(year from BIRTHDAY) >= " + "'" + stDate + "'"
         //           +" and " + field + " = " + "'" + var + "'").list();
        } else
        //var=1
        {
            if (!field.equals("rovd"))
                 exeQuery="from Personal where " + field + " =:var";
            else
                exeQuery="select p from Personal p inner join p.rovd r where r.name =:var";
            if (checkRole()) {
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setParameter("var", var);
            } else {
                exeQuery="select p from Personal p inner join p.rovd r where " + field + " =:var and r.name = :rovd";
                query = sessionFactory.getCurrentSession().createQuery(exeQuery);
                query.setParameter("var", var);
                query.setParameter("rovd", users.getRovd().getName());

            }
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
       // personal.setEdited();
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        //Users users=userService.getUserByLogin(user.getUsername());
        personal.setEditedBy(user.getUsername());

        sessionFactory.getCurrentSession().saveOrUpdate(personal);
    }

    public Personal getPersonal (Integer id){
        return (Personal) sessionFactory.getCurrentSession().get(Personal.class, id);
    }

}
