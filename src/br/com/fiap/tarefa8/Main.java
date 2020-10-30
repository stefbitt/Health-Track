package br.com.fiap.tarefa8;

import br.com.fiap.tarefa8.service.IcmService;
import br.com.fiap.tarefa8.service.UserService;
import br.com.fiap.tarefa8.util.ImcCalcular;
import br.com.fiap.tarefa8.vo.ImcVO;
import br.com.fiap.tarefa8.vo.UserVO;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;

public class Main {

    static {
        InputStream inputStream = Main.class.getResourceAsStream("/logging.properties");
        if (null != inputStream) {
            try {
                LogManager.getLogManager().readConfiguration(inputStream);
            } catch (IOException e) {
                Logger.getGlobal().log(Level.SEVERE, "init logging system", e);
            }
        }
    }


    public static void main(String[] args) {

        UserService userService = new UserService();
        IcmService service = new IcmService();

        for (UserVO u : userService.listAll()) {
            service.insert(new ImcVO(
                    ImcCalcular.calcular(u.getAltura(), u.getPeso()),
                    new Date(),
                    u.getId()));
        }

        service.listAll().stream().forEach(System.out::println);

        ImcVO update = new ImcVO(10, new Date(), 7d);
        service.update(update);

        ImcVO remove = new ImcVO(0, null, 7d);
        service.remove(remove);

        service.listAll().stream().forEach(System.out::println);

    }
}
