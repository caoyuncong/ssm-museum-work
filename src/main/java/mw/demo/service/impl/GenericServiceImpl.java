package mw.demo.service.impl;

import mw.demo.util.Pagination;
import mw.demo.dao.GenericDao;
import mw.demo.service.GenericService;
import mw.demo.util.Pagination;

import java.io.Serializable;

/**
 * Created by mingfei.net@gmail.com
 * 7/22/17 09:14
 * https://github.com/thu/ssm/
 */
public abstract class GenericServiceImpl<T extends Serializable, ID extends Number> implements GenericService<T, ID> {

    GenericDao<T, ID> genericDao;

    abstract void setGenericDao(GenericDao<T, ID> genericDao);

    @Override
    public void create(T t) {
        genericDao.create(t);
    }

    @Override
    public void remove(ID id) {
        genericDao.remove(id);
    }

    @Override
    public void remove(String statement, Object parameter) {
        genericDao.remove(statement, parameter);
    }

    @Override
    public void modify(T t) {
        genericDao.modify(t);
    }

    @Override
    public void modify(String statement, Object parameter) {
        genericDao.modify(statement, parameter);
    }

    @Override
    public T query(String statement, Object parameter) {
        return genericDao.query(statement, parameter);
    }

    @Override
    public T queryById(ID id) {
        return genericDao.queryById(id);
    }

    @Override
    public Pagination<T> query(String statement, Object parameter, int currentPage) {
        return genericDao.query(statement, parameter, currentPage);
    }

    @Override
    public Pagination<T> queryAll(int currentPage) {
        return genericDao.queryAll(currentPage);
    }
}
