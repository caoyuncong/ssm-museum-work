package ${package}.service.impl;

import ${package}.model.${model};
import ${package}.service.${model}Service;
import ${package}.dao.GenericDao;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

@Service
public class ${model}ServiceImpl extends GenericServiceImpl<${model}, ${PK}> implements ${model}Service {

    @Override
    @Autowired
    @Qualifier("${model?uncap_first}DaoImpl")
    void setGenericDao(GenericDao<${model}, ${PK}> genericDao) {
        super.genericDao = genericDao;
    }
}