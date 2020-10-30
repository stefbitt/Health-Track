package br.com.fiap.tarefa8.dao;

import br.com.fiap.tarefa8.exceptions.DatabaseException;

import java.util.List;

public interface IDAO<T> {

    public void save(T vo) throws DatabaseException;
    public void insert(T vo) throws DatabaseException;
    public void delete(T vo) throws DatabaseException;
    public void update(T vo) throws DatabaseException;
    public List<T> listALl() throws DatabaseException;

}
