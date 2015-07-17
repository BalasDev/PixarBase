package by.pixar.uvd.service;

import by.pixar.uvd.dao.PersonalDAO;
import by.pixar.uvd.domain.Personal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PersonalServiceImpl implements PersonalService{

    @Autowired
    PersonalDAO personalDAO;

    @Transactional
    public void addPersonal(Personal personal) {
     personalDAO.addPersonal(personal);
    }

    @Transactional
    public List<Personal> listPersonal() {
        return personalDAO.listPersonal();
    }

    @Transactional
    public void deletePersonal(Integer id) {
       personalDAO.deletePersonal(id);
    }
}
