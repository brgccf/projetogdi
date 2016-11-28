package code.gdi.negocio;

import code.gdi.dados.vem.RepositorioVEMArray;
import code.gdi.exceptions.RepositorioInvalidoException;
import code.gdi.abstracts.VEM;
import code.gdi.dados.vem.RepositorioVEMLista;
import code.gdi.exceptions.VEMExistenteException;
import code.gdi.exceptions.VEMInexistenteException;
import code.gdi.interfaces.RepositoriosVEM;

import java.util.List;

/**
 * Created by Lucas Valença on 19/06/16.
 * © 2016 Singularity Systems
 */
public class NegociosVEM {

    // Objeto a partir da interface, não inicializado
    private RepositoriosVEM repositorio;

    public NegociosVEM(String tipo) throws RepositorioInvalidoException {
        // Construtor recebe a string que define o tipo de repositório
        // o mesmo é então inicializado.
        switch (tipo) {
            case "array":
                repositorio = new RepositorioVEMArray();
                break;
            case "lista":
                repositorio = new RepositorioVEMLista();
                break;
            default:
                throw new RepositorioInvalidoException();
        }
    }

    // Checa se o VEM existe pelo seu numero
    private boolean exists(String id) {
        return repositorio.exists(id);
    }

    // Insere o VEM caso ainda não exista
    public void insert(VEM object) throws VEMExistenteException {

        if (!exists(object.getNumber())) {
            repositorio.insert(object);
        } else
            throw new VEMExistenteException();
    }

    // Atualiza o VEM caso ele exista
    public void update(VEM object) throws VEMInexistenteException {

        if (exists(object.getNumber())) {
            repositorio.update(object);
        } else throw new VEMInexistenteException();
    }

    // Remove o VEM caso ele exista
    public void remove(VEM object) throws VEMInexistenteException {

        if (exists(object.getNumber())) {
            repositorio.remove(object);
        } else throw new VEMInexistenteException();
    }

    // Retorna um VEM buscado pelo número caso ele exista
    public VEM search(String id) throws VEMInexistenteException {
        if (exists(id)) {
            return repositorio.search(id);

        }
        else
            throw new VEMInexistenteException();
    }


    // Lista os VEMs guardados no banco de dados, utilizado no JavaFX
    public List toList() {
        return repositorio.toList();
    }
}
