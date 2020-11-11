package br.com.fiap.healtrack.service;

import br.com.fiap.health.vo.ImcVO;
import br.com.fiap.health.vo.UserVO;
import br.com.fiap.healthtrack.dao.IDAO;
import br.com.fiap.healthtrack.dao.IcmDAO;
import br.com.fiap.healthtrack.exceptions.DatabaseException;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class IcmService {

    private final Logger logger = Logger.getLogger(IcmService.class.getName());

    public IcmService() {
    }

    public void insert(ImcVO vo){

        try {
            IDAO icmDAO = new IcmDAO();
            icmDAO.insert(vo);
        } catch (DatabaseException e) {
            logger.log(Level.WARNING, e.getMessage());
        }

    }

    public List<ImcVO> listAll() {
        List<ImcVO> result = new ArrayList<>();

        try {
            IDAO icmDAO = new IcmDAO();
            result.addAll(icmDAO.listALl());
        } catch (DatabaseException e) {
            logger.log(Level.WARNING, e.getMessage());
        }

        return result;
    }

    public void remove(ImcVO remove) {
        try {
            IDAO icmDAO = new IcmDAO();
            icmDAO.delete(remove);
        } catch (DatabaseException e) {
            logger.log(Level.WARNING, e.getMessage());
        }
    }

    public void update(ImcVO update) {
        try {
            IDAO icmDAO = new IcmDAO();
            icmDAO.update(update);
        } catch (DatabaseException e) {
            logger.log(Level.WARNING, e.getMessage());
        }
    }
}
