class Pack {
    method duracion()
    method precio()
    method beneficioEspecial()
    method coordinadorACargo()
}    

class Nacional inherits Pack {
    const actividadesIncluidas = []

    method provinciaDeDestino()
}

class Internacional inherits Pack {
    method paisDeDestino()
    method cantidadDeEscalas()
    method esLugarDeInteres()
}

class Coordinador {
    var rol = guia

    method cambiarDeRol(nuevoRol) {
        rol = nuevoRol
    }
    method rolDelGuia() {
        if (rol == guia) {
            return guia
        } else if (rol == asistenteLogistico) {
            return asistenteLogistico
        } else if (rol == acompaniante) {
            return acompaniante
        } else {
            self.error("No hay otro rol")
        }
    }
    method cantidadDeViajesRealizados()
    method estaMotivado()
    method aniosDeExperiencia()
}

object guia {}
object asistenteLogistico {}
object acompaniante {}
object trasladosPrivados {
    method tipo() = "Translados Privados"
}










