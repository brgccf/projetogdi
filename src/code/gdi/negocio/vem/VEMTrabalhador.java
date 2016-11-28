package code.gdi.negocio.vem;

import code.gdi.exceptions.TipoVEMInvalidoException;
import code.gdi.exceptions.VEMInvalidoException;
import code.gdi.negocio.pessoas.Pessoa;
import code.gdi.abstracts.VEM;
import code.gdi.exceptions.SaldoInsuficienteException;
import code.gdi.exceptions.ValorInvalidoException;
import code.gdi.negocio.pessoas.Trabalhador;

/**
 * Created by Edjan Michiles on 17/06/16.
 * © 2016 Singularity Systems
 */
public class VEMTrabalhador extends VEM {

    public VEMTrabalhador(String number, Pessoa person) throws TipoVEMInvalidoException, VEMInvalidoException {
        // Assim como nos outros VEMs, checa se o tipo de pessoa é correto.
        // Não requer filtragem adicional pelo próprio objeto Trabalhador já a fazer, assim como os outros
        // objetos dos outros VEM.
        super(number, person);
        if(!(person instanceof Trabalhador))
            throw new TipoVEMInvalidoException();
    }

    @Override
    public void credit(double value) throws ValorInvalidoException {
        // Creditar normal, como em VEM Comum
        if (value <= 0)
            throw new ValorInvalidoException();
        this.balance += value;
    }

    @Override
    public void debit(double value) throws ValorInvalidoException, SaldoInsuficienteException {
        // Debitar normal, como em VEM Comum
        if (value <= 0)
            throw new ValorInvalidoException();
        else if (value > this.getBalance())
            throw new SaldoInsuficienteException();
        this.balance -= value;
    }
}
