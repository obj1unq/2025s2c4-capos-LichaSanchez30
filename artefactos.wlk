
object mochila {
    const artefactos = []
    var capacidad = 2
    method hayLugar () = artefactos.size() < capacidad

    method guardar(artefacto) {
        artefactos.add(artefacto)
    }

    method artefactosGuardados() = artefactos
}

