package by.pixar.uvd.service;

import by.pixar.uvd.domain.Personal;

import java.util.Date;
import java.util.List;


public interface PersonalService {
    public void addPersonal(Personal personal);

    public List<Personal> listPersonal(Integer rovdId);

    public void deletePersonal(Integer id);

    public List<Personal> findPersonal(String field, String var, Date stDate, Date endDate, String dateSearching);

    public void editPersonal(Personal personal);

    public Personal getPersonal(Integer id);
}
