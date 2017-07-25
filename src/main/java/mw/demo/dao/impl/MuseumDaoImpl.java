package mw.demo.dao.impl;

import mw.demo.model.Museum;
import mw.demo.dao.MuseumDao;

import org.springframework.stereotype.Repository;

@Repository
public class MuseumDaoImpl extends GenericDaoImpl<Museum, Integer> implements MuseumDao {
}