package mw.demo.service.impl;

import mw.demo.model.Work;
import mw.demo.service.WorkService;
import mw.demo.dao.GenericDao;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

@Service
public class WorkServiceImpl extends GenericServiceImpl<Work, Integer> implements WorkService {

    @Override
    @Autowired
    @Qualifier("workDaoImpl")
    void setGenericDao(GenericDao<Work, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}