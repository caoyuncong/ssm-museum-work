package mw.demo.dao.impl;

import mw.demo.model.Work;
import mw.demo.dao.WorkDao;

import org.springframework.stereotype.Repository;

@Repository
public class WorkDaoImpl extends GenericDaoImpl<Work, Integer> implements WorkDao {
}