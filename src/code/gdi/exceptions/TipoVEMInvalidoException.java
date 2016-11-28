package code.gdi.exceptions;

/**
 * Created by Lucas Valença on 17/06/16.
 * © 2016 Singularity Systems
 */
public class TipoVEMInvalidoException extends Exception{
    public TipoVEMInvalidoException() {
        //A pessoa não preenche os requisitos necessários para o tipo do VEM
        super("Não preenche os requisitos necessários para este tipo de VEM");
    }
}
