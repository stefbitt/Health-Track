package br.com.fiap.healthtrack.dao;

import java.util.List;

import br.com.fiap.healthtrack.exceptions.DatabaseException;

public interface IDAO<T> {

    public void save(T vo) throws DatabaseException;
    public void insert(T vo) throws DatabaseException;
    public void delete(T vo) throws DatabaseException;
    public void update(T vo) throws DatabaseException;
    public List<T> listALl() throws DatabaseException;

}
