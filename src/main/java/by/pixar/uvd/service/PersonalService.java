package by.pixar.uvd.service;

import by.pixar.uvd.domain.Personal;

import java.util.List;


public interface PersonalService {
    public void addPersonal(Personal personal);

    public List<Personal> listPersonal();

    public void deletePersonal(Integer id);
}
