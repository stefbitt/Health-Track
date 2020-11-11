package br.com.fiap.healtrack.service;

import br.com.fiap.health.vo.UserVO;
import br.com.fiap.healthtrack.dao.IDAO;
import br.com.fiap.healthtrack.dao.UserDAO;
import br.com.fiap.healthtrack.exceptions.DatabaseException;

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
