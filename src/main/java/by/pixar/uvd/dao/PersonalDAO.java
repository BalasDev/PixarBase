package by.pixar.uvd.dao;

import by.pixar.uvd.domain.Personal;

import java.util.List;

public interface PersonalDAO {

    public void addPersonal(Personal personal);

    public List<Personal> listPersonal();

    public void deletePersonal(Integer id);

    public List<Personal> findPersonal(String field, String var, String stDate, String endDate);

    public void editPersonal(Personal personal);

}
