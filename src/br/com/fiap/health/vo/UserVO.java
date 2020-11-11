package br.com.fiap.health.vo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class UserVO implements Serializable {

    private Double id;
    private String nome;
    private String email;
    private String senha;
    private BigDecimal telefone;
    private Double peso;
    private Double altura;
    private String sexo;
    private Date data;
    private Double kcaloria;
    private byte[] foto;


    public UserVO(Double id) {
        this.id = id;
    }

    public UserVO(Double id, String nome, String email, String senha, BigDecimal telefone, Double peso, Double altura, String sexo, Date data, Double kcaloria, byte[] foto) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.telefone = telefone;
        this.peso = peso;
        this.altura = altura;
        this.sexo = sexo;
        this.data = data;
        this.kcaloria = kcaloria;
        this.foto = foto;
    }

    public Double getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }

    public String getSenha() {
        return senha;
    }

    public BigDecimal getTelefone() {
        return telefone;
    }

    public Double getPeso() {
        return peso;
    }

    public Double getAltura() {
        return altura;
    }

    public String getSexo() {
        return sexo;
    }

    public Date getData() {
        return data;
    }

    public Double getKcaloria() {
        return kcaloria;
    }

    public byte[] getFoto() {
        return foto;
    }
}
