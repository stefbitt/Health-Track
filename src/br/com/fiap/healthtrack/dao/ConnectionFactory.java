package br.com.fiap.healthtrack.dao;

import java.sql.Connection;

public final class ConnectionFactory {

	private static final ThreadLocal<Connection> FACTORY = new InheritableThreadLocal<Connection>() {
		@Override
		protected Connection initialValue() {
			//TODO: Criar uma classe factory que pegue as conexões de um property.
			return super.initialValue();
		}
		
		public void remove() {
			//TODO: Fechar a conexão.
			super.remove();
		};
	};
	
	private ConnectionFactory() {
	}

	public static Connection create() {
		return FACTORY.get();
	}

	public static void close() {
		FACTORY.remove();
	}
	
}
