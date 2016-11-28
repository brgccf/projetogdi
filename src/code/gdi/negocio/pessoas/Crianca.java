package code.gdi.negocio.pessoas;

import code.gdi.exceptions.ParametroNuloException;
import code.gdi.exceptions.CPFInvalidoException;
import code.gdi.exceptions.IdadeInvalidaException;
import code.gdi.exceptions.NomeInvalidoException;

import java.util.Date;

/**
 * Created by Lucas Valença on 17/06/16.
 * © 2016 Singularity Systems
 */
public class Crianca extends Pessoa {

    public Crianca(String name, Date birth, String cpf) throws CPFInvalidoException, IdadeInvalidaException, ParametroNuloException, NomeInvalidoException {
        //tenta criar uma nova criança
        super(name, birth, cpf);
        //calcula a idade da criança
        double years = Math.abs(System.currentTimeMillis() - birth.getTime())
                / (365.25 * 24 * 60 * 60 * 1000);
        // Milisegundos atual - Milisegundos do nascimento
        // dividido por dias * horas * segundos * milisegundos
        //verifica se a idade da criança é válida
        if (years > 6)
            throw new IdadeInvalidaException();

    }
}
