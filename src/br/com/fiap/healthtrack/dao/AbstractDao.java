package br.com.fiap.healthtrack.dao;

import java.util.logging.Logger;

public abstract class AbstractDao<T> implements Dao<T> {

	protected static final Logger LOGGER = Logger.getLogger(AbstractDao.class.getName());
	
	public AbstractDao() {
		super();
	}

	

}
