package br.com.fiap.healthtrack.dao;

import br.com.fiap.health.vo.ImcVO;
import br.com.fiap.healthtrack.exceptions.DatabaseException;
import br.com.fiap.healthtrack.util.ConnectionFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class IcmDAO implements IDAO<ImcVO> {

    private final Logger logger = Logger.getLogger(IcmDAO.class.getName());


    @Override
    public void save(ImcVO vo) throws DatabaseException {

    }

    private static final String SQL_INSERT = "INSERT INTO t_imc ( cod_imc, nr_calculo_imc, dt_calc_imc, t_user_id_user) VALUES ( SEQ_IMC.nextval, ?, ?, ?)";
    @Override
    public void insert(ImcVO vo) throws DatabaseException {

        Connection connection = ConnectionFactory.getInstance().getConnection();

        try {
            PreparedStatement statement = connection.prepareStatement(SQL_INSERT);
            statement.setDouble(1,vo.getValor());
            statement.setDate(2, new Date(vo.getData().getTime()));
            statement.setDouble(3,vo.getIdUsuer());
            statement.execute();
        } catch (SQLException throwables) {
            throw new DatabaseException(throwables);
        }

    }

    private static final String SQL_REMOVE = "DELETE FROM t_imc WHERE t_user_id_user = ?";

    @Override
    public void delete(ImcVO vo) throws DatabaseException {

        Connection connection = ConnectionFactory.getInstance().getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_REMOVE);
            statement.setDouble(1, vo.getIdUsuer());
            statement.execute();
        } catch (SQLException throwables) {
            throw new DatabaseException(throwables);
        }

    }

    private static final String SQL_UPDATE = "UPDATE t_imc SET nr_calculo_imc = ?, dt_calc_imc = ?, t_user_id_user = ? WHERE  cod_imc = ?";

    @Override
    public void update(ImcVO vo) throws DatabaseException {

        Connection connection = ConnectionFactory.getInstance().getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement(SQL_UPDATE);
            statement.setDouble(1, vo.getIdUsuer());
            statement.execute();
        } catch (SQLException throwables) {
            throw new DatabaseException(throwables);
        }

    }

    private static final String SQL_ALL = "SELECT b.cod_imc, b.nr_calculo_imc, b.dt_calc_imc, b.t_user_id_user, a.id_user, a.nm_user FROM t_imc   b, t_user a WHERE a.id_user = b.t_user_id_user";

    @Override
    public List<ImcVO> listALl() throws DatabaseException {

        List<ImcVO> result = new ArrayList<>();
        Connection connection = ConnectionFactory.getInstance().getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SQL_ALL);
            while (resultSet.next()) {
                result.add(new ImcVO(
                        resultSet.getDouble("cod_imc"),
                        resultSet.getDouble("nr_calculo_imc"),
                        resultSet.getDate("dt_calc_imc"),
                        resultSet.getDouble("id_user"),
                        resultSet.getString("nm_user")));
            }
        } catch (SQLException throwables) {
            throw new DatabaseException(throwables);
        }

        return result;
    }
}
