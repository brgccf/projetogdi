package code.gdi.negocio;

import code.gdi.enums.Linhas;
import code.gdi.exceptions.ParametroNuloException;

/**
 * Created by Pedro Tôrres on 17/06/16.
 * © 2016 Singularity Systems
 */
public class Onibus {
    // Numero e linha do onibus, onde linha está ligada ao anel e este à tarifa
    private String number;
    private Linhas line;

    // Construtor recebe ambas variáveis acima e não aceita nulos
    public Onibus(String number, Linhas line) throws ParametroNuloException {
        if(number == null || line == null)
        {
            throw new ParametroNuloException();
        }
        this.number = number;
        this.line = line;
    }

    // Gets padrão
    public String getNumber() {
        return number;
    }

    public Linhas getLine() {
        return line;
    }
}
