package code.gdi.negocio.pessoas;

import code.gdi.exceptions.CPFInvalidoException;
import code.gdi.exceptions.IdadeInvalidaException;
import code.gdi.exceptions.NomeInvalidoException;
import code.gdi.exceptions.ParametroNuloException;

import java.util.Date;

/**
 * Created by Edjan Michiles on 17/06/16.
 * © 2016 Singularity Systems
 */
public class Idoso extends Pessoa {

    public Idoso(String name, Date birth, String cpf) throws CPFInvalidoException, IdadeInvalidaException, ParametroNuloException, NomeInvalidoException {
        //tenta criar um novo idoso
        super(name, birth, cpf);

        // Milisegundos atual - Milisegundos do nascimento
        // dividido por dias * horas * segundos * milisegundos
        //calcula a idade do idoso
        double years = Math.abs(System.currentTimeMillis() - birth.getTime()) / (365.25 * 24 * 60 * 60 * 1000);
        //verifica se é uma idade válida
        if(years < 65)
            throw new IdadeInvalidaException();
    }
}
