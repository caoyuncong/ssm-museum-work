package mw.demo.service;

import mw.demo.util.Pagination;
import mw.demo.util.Pagination;

import java.io.Serializable;

/**
 * Created by mingfei.net@gmail.com
 * 7/22/17 10:27
 * https://github.com/thu/ssm/
 */
public interface GenericService<T extends Serializable, ID extends Number> {

    void create(T t);

    void remove(ID id);

    void remove(String statement, Object parameter);

    void modify(T t);

    void modify(String statement, Object parameter);

    T query(String statement, Object parameter);

    T queryById(ID id);

    Pagination<T> query(String statement, Object parameter, int currentPage);

    Pagination<T> queryAll(int currentPage);
}
