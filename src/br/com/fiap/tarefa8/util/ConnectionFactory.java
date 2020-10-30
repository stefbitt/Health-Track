package br.com.fiap.tarefa8.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionFactory {

    // Garante um singleton por thread
    private static final ThreadLocal<ConnectionFactory> INSTANCE = new InheritableThreadLocal<ConnectionFactory>(){
        @Override
        protected ConnectionFactory initialValue() {
            return new ConnectionFactory();
        }

        @Override
        public void remove() {
            super.remove();
        }
    };

    private Connection connection;

    private final Logger logger = Logger.getLogger(Connection.class.getName());

    private static final String URL = "jdbc:oracle:thin:@%s:%s:%s";
    private ConnectionFactory() {
        InputStream resourceAsStream = ConnectionFactory.class.getResourceAsStream("/connection.properties");
        Properties properties = new Properties();
        try {
            properties.load(resourceAsStream);
        } catch (IOException e) {
            logger.severe(e.getMessage());
            return;
        }

        try {
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (ClassNotFoundException e) {
            logger.log(Level.SEVERE, e.getMessage());
            return;
        }

        String url = String.format(
                URL,
                properties.getProperty("host"),
                properties.getProperty("port"),
                properties.getProperty("sid"));

        try {
            this.connection = DriverManager.getConnection(
                    url,
                    properties.getProperty("username"),
                    properties.getProperty("password"));
            logger.log(Level.INFO, String.format("Connected in %s", url) );
        } catch (SQLException e) {
            logger.info(e.getMessage());
        }
    }

    public static ConnectionFactory getInstance(){
        return INSTANCE.get();
    }

    public Connection getConnection() {
        return connection;
    }

    @Override
    protected void finalize() throws Throwable {
        super.finalize();
    }
}
