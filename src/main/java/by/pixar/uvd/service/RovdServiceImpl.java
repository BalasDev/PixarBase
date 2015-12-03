package by.pixar.uvd.service;


import by.pixar.uvd.dao.RovdDAO;
import by.pixar.uvd.domain.Rovd;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RovdServiceImpl implements RovdService {

    @Autowired
    RovdDAO rovdDAO;

    @Transactional
    @Override
    public List<Rovd> listRovd() {

        return rovdDAO.listRovd();
    }
}
