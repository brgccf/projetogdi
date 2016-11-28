package code.gdi.negocio.vem;

import code.gdi.exceptions.TipoVEMInvalidoException;
import code.gdi.exceptions.VEMInvalidoException;
import code.gdi.negocio.pessoas.Crianca;
import code.gdi.negocio.pessoas.Pessoa;
import code.gdi.abstracts.VEM;
import code.gdi.exceptions.OperacaoInvalidaException;

/**
 * Created by Pedro Tôrres on 17/06/16.
 * © 2016 Singularity Systems
 */
public class VEMInfantil extends VEM {

    public VEMInfantil(String number, Pessoa person) throws TipoVEMInvalidoException, VEMInvalidoException {
        // Checa se o objeto recebido realmente é criança,
        // que, assim como idoso, só se permite instanciar a partir de certa idade.
        super(number, person);
        if(!(person instanceof Crianca))
            throw new TipoVEMInvalidoException();
    }

    @Override
    public void credit(double value) throws OperacaoInvalidaException {
        // Assim como idoso, VEM Infantil tem "saldo infinito"
        throw new OperacaoInvalidaException();
    }

    @Override
    public void debit(double value){
        // Assim como idoso, VEM Infantil tem "saldo infinito"
    }


}
