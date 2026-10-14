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
        } else if (rol == acompañante) {
            return acompañante
        } else {
            
        }
    }
    method cantidadDeViajesRealizados()
    method estaMotivado()
    method aniosDeExperiencia()
}













