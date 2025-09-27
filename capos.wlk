import castillo.*
import artefactos.*

object rolando{
    const artefactosEncontrados = []
/*Ejercico N°1*/

    method artefactoEncontrado(artefacto) {
        artefactosEncontrados.add(artefacto)
        self.recolectarArtefacto(artefacto)
    }

    method levantarArtefacto(artefacto) {
        if(not mochila.artefactosGuardados().contains(artefacto)){
            mochila.guardar(artefacto)
        }
    }

    method recolectarArtefacto(artefacto) {
        self.validarCapacidadMochila()
        self.levantarArtefacto(artefacto)
    }
    method sePuedeLevantar() = mochila.hayLugar()

    method validarCapacidadMochila() {
        if(not self.sePuedeLevantar()){
            self.error("Mochila llena mono")
        }
    }
    
    method artefactosEnMochila() = mochila.artefactosGuardados()

    /*Castillo N°2*/

    method guardarArtefactoCastillo() {
        mochila.artefactosGuardados().forEach{
            elemento => 
            castillo.armasGuardadas().add(elemento)
            mochila.artefactosGuardados().remove(elemento)
        }
    }

    method totalArtefactos() = castillo.armasGuardadas() +
        self.artefactosEnMochila()

    method artefactosEncontrados() = artefactosEncontrados
    
}



