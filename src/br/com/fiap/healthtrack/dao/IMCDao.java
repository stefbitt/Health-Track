package br.com.fiap.healthtrack.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.logging.Level;

import br.com.fiap.healthtrack.entity.IMCEntity;

public class IMCDao extends AbstractDao<IMCEntity> {

	public IMCDao() {
		super();
	}

	@Override
	public Optional<IMCEntity> get(long id) {
		return null;
	}

	private static final String SQL_ALL = "SELECT imc.cod_imc, imc.nr_calculo_imc, imc.dt_calc_imc, usuario.nr_peso FROM t_imc imc join t_user usuario on usuario.id_user = imc.t_user_id_user";

	@Override
	public List<IMCEntity> getAll() {
		List<IMCEntity> entities = new ArrayList<IMCEntity>();
		try {
			Statement createStatement = ConnectionFactory.create().createStatement();
			ResultSet rs = createStatement.executeQuery(SQL_ALL);
			
			IMCEntity entity = null;
			while (rs.next()) {
				entity = new IMCEntity();
				entity.setCalculoIMC(rs.getDouble("nr_calculo_imc"));
				entity.setCodigoIMC(rs.getLong("cod_imc"));
				entity.setDataCalculo(rs.getDate("dt_calc_imc"));
				entity.setPeso(rs.getDouble("nr_peso"));
				entities.add(entity);
			}

		} catch (SQLException e) {
			LOGGER.log(Level.INFO, null, e);
		}
		return entities;
	}

	@Override
	public void save(IMCEntity t) {

	}

	@Override
	public void update(IMCEntity t, String[] params) {

	}

	@Override
	public void delete(IMCEntity t) {

	}

}
