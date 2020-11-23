package br.com.fiap.healthtrack.controller;

public final class BaseContext {

	private static final String BASE = "WEB-INF/pages/";
	private BaseContext() {
	}

	public static final String build(final String valor) {
		return BASE + valor + ".jsp";
	}
	
}
