package br.com.fiap.tarefa8.vo;

import java.io.Serializable;
import java.util.Date;

public class ImcVO implements Serializable {

    private final double id;
    private final double valor;
    private final Date data;
    private final double idUsuer;
    private final String nomeUsuario;

    public ImcVO(double id) {
        this.id = id;
        this.valor = 0;
        this.data = null;
        this.idUsuer = 0;
        this.nomeUsuario = null;
    }

    public ImcVO(double valor, Date data, double idUsuer) {
        this.valor = valor;
        this.data = data;
        this.idUsuer = idUsuer;
        this.nomeUsuario = null;
        this.id = 0;
    }

    public ImcVO(double id, double valor, Date data, double idUsuer) {
        this.id = id;
        this.valor = valor;
        this.data = data;
        this.idUsuer = idUsuer;
        this.nomeUsuario = null;
    }

    public ImcVO(double id, double valor, Date data, double idUsuer, String nomeUsuario) {
        this.id = id;
        this.valor = valor;
        this.data = data;
        this.idUsuer = idUsuer;
        this.nomeUsuario = nomeUsuario;
    }

    public double getId() {
        return id;
    }

    public double getValor() {
        return valor;
    }

    public Date getData() {
        return data;
    }

    public double getIdUsuer() {
        return idUsuer;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }

    @Override
    public String toString() {
        return "ImcVO{" +
                "id=" + id +
                ", valor=" + valor +
                ", data=" + data +
                ", idUsuer=" + idUsuer +
                ", nomeUsuario='" + nomeUsuario + '\'' +
                '}';
    }
}
