package br.com.fiap.tarefa8.dao;

import br.com.fiap.tarefa8.exceptions.DatabaseException;
import br.com.fiap.tarefa8.util.ConnectionFactory;
import br.com.fiap.tarefa8.vo.ImcVO;
import br.com.fiap.tarefa8.vo.UserVO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IDAO<UserVO> {
    @Override
    public void save(UserVO vo) throws DatabaseException {

    }

    @Override
    public void insert(UserVO vo) throws DatabaseException {

    }

    @Override
    public void delete(UserVO vo) throws DatabaseException {

    }

    @Override
    public void update(UserVO vo) throws DatabaseException {

    }

    private static final String SQL_ALL = "SELECT id_user, nm_user, ds_email, ds_senha, nr_telefone, foto_perfil, nr_peso, nr_altura, ds_sexo, dt_nasc, nr_kcal_dia FROM t_user";
    @Override
    public List<UserVO> listALl() throws DatabaseException {

        List<UserVO> result = new ArrayList<>();
        Connection connection = ConnectionFactory.getInstance().getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SQL_ALL);
            while (resultSet.next()) {
                result.add(
                        new UserVO(
                                resultSet.getDouble("id_user"),
                                resultSet.getString("nm_user"),
                                resultSet.getString("ds_email"),
                                resultSet.getString("ds_senha"),
                                resultSet.getBigDecimal("nr_telefone"),
                                resultSet.getDouble("nr_peso"),
                                resultSet.getDouble("nr_altura"),
                                resultSet.getString("ds_sexo"),
                                resultSet.getDate("dt_nasc"),
                                resultSet.getDouble("nr_kcal_dia"),
                                null));
            }
        } catch (SQLException throwables) {
            throw new DatabaseException(throwables);
        }

        return result;

    }
}
