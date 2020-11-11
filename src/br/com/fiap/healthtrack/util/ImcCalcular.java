package br.com.fiap.healthtrack.util;

public final class ImcCalcular {
    private ImcCalcular() {
    }

    public static double calcular(double altura, double peso){
        double result = peso / Math.pow(altura, 2);
        return result;
    }

}
