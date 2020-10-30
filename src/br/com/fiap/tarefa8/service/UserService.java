package br.com.fiap.tarefa8.service;

import br.com.fiap.tarefa8.dao.IDAO;
import br.com.fiap.tarefa8.dao.UserDAO;
import br.com.fiap.tarefa8.exceptions.DatabaseException;
import br.com.fiap.tarefa8.vo.UserVO;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserService {

    private final Logger logger = Logger.getLogger(UserService.class.getName());

    public List<UserVO> listAll() {

        List<UserVO> result = new ArrayList<>();

        try {
            IDAO idao = new UserDAO();
            result.addAll(idao.listALl());
        } catch (DatabaseException e) {
            logger.log(Level.WARNING, e.getMessage());
        }

        return result;
    }

}
