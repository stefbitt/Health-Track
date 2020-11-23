package br.com.fiap.healthtrack.service;

import java.util.List;

import br.com.fiap.healthtrack.dao.ConnectionFactory;
import br.com.fiap.healthtrack.dao.IMCDao;
import br.com.fiap.healthtrack.entity.IMCEntity;

public class IMCService {

	public IMCService() {

	}

	public List<IMCEntity> getAllIMC(){
		
		IMCDao dao = new IMCDao();
		List<IMCEntity> all = dao.getAll();
		ConnectionFactory.close();
		return all;
	}
	
}
