package br.com.fiap.healthtrack.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class ConnectionFactory {

	private static final Logger LOGGER = Logger.getLogger(ConnectionFactory.class.getName());

	private static final Factory FACTORY = new Factory();

	private ConnectionFactory() {
	}

	public static Connection create() {
		return FACTORY.get();
	}

	public static void close() {
		FACTORY.remove();
	}

	private static final class Factory extends InheritableThreadLocal<Connection> {

		private Properties prop = new Properties();

		private boolean started = false;

		public Factory() {
			try {
				InputStream resourceAsStream = ConnectionFactory.class.getResourceAsStream("/connection.properties");
				prop.load(resourceAsStream);
				DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
			} catch (SQLException | IOException e) {
				LOGGER.log(Level.WARNING, null, e);
			}
		}

		@Override
		protected Connection initialValue() {
			Connection connection = null;
			try {
				started = true;
				connection = DriverManager.getConnection(prop.getProperty("url"), prop.getProperty("username"),
						prop.getProperty("password"));
			} catch (SQLException e) {
				started = false;
				LOGGER.log(Level.WARNING, null, e);
			}
			return connection;
		}

		@Override
		public void remove() {
			if (started) {
				Connection connection = get();
				started = false;
				try {
					connection.close();
				} catch (SQLException e) {
					LOGGER.log(Level.WARNING, null, e);
				}
			}
			super.remove();
		}
	}

}
