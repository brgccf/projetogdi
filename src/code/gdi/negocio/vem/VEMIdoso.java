package code.gdi.negocio.vem;

import code.gdi.exceptions.TipoVEMInvalidoException;
import code.gdi.exceptions.VEMInvalidoException;
import code.gdi.negocio.pessoas.Pessoa;
import code.gdi.abstracts.VEM;
import code.gdi.exceptions.OperacaoInvalidaException;
import code.gdi.negocio.pessoas.Idoso;

/**
 * Created by Lucas Valença on 17/06/16.
 * © 2016 Singularity Systems
 */
public class VEMIdoso extends VEM {
    public VEMIdoso(String number, Pessoa person) throws TipoVEMInvalidoException, VEMInvalidoException {
        // Checa se a pessoa passada é de fato idoso.
        // Lembrando que o objeto idoso só se permite instanciar a partir de certa idade
        super(number, person);
        if(!(person instanceof Idoso))
            throw new TipoVEMInvalidoException();
    }

    @Override
    public void credit(double value) throws OperacaoInvalidaException {
        // VEM de idoso tem "saldo infinito"
        throw new OperacaoInvalidaException();
    }

    @Override
    public void debit(double value){
        // VEM de idoso tem "saldo infinito"
    }


}
