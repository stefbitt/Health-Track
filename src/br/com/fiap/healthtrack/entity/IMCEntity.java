package br.com.fiap.healthtrack.entity;

import java.util.Date;

public class IMCEntity {

	private Long codigoIMC;
	private Double calculoIMC;
	private Date dataCalculo;
	private Double peso;

	public IMCEntity() {
	}

	public Long getCodigoIMC() {
		return codigoIMC;
	}

	public void setCodigoIMC(Long codigoIMC) {
		this.codigoIMC = codigoIMC;
	}

	public Double getCalculoIMC() {
		return calculoIMC;
	}

	public void setCalculoIMC(Double calculoIMC) {
		this.calculoIMC = calculoIMC;
	}

	public Date getDataCalculo() {
		return dataCalculo;
	}

	public void setDataCalculo(Date dataCalculo) {
		this.dataCalculo = dataCalculo;
	}

	public Double getPeso() {
		return peso;
	}

	public void setPeso(Double peso) {
		this.peso = peso;
	}

	public String getClassificacao() {
		String result = "";

		if (getCalculoIMC() != null) {

			if (getCalculoIMC() < 18.5) {
				result = "ABAIXO DO PESO";
			} else if (getCalculoIMC() <= 24.9) {
				result = "PESO NORMAL";
			} else if (getCalculoIMC() <= 29.9) {
				result = "SOBREPESO";
			} else if (getCalculoIMC() <= 39.9) {
				result = "OBESIDADE";
			} else {
				result = "OBESIDADE GRAVE";
			}

		}

		return result;

	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigoIMC == null) ? 0 : codigoIMC.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		IMCEntity other = (IMCEntity) obj;
		if (codigoIMC == null) {
			if (other.codigoIMC != null)
				return false;
		} else if (!codigoIMC.equals(other.codigoIMC))
			return false;
		return true;
	}

}
