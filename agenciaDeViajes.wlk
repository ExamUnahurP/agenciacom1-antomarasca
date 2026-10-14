class Pack {
    const precioBase()
    const beneficioEspecial = []
    
    method agregarBeneficio(beneficio) {
            beneficioEspecial.add(beneficio)
        }
    
    method duracion()
    method valorFinal() {
        if (beneficio.estaVigente()) {
            return self.precioBase() + self.beneficioEspecial().precio()
        } else {
            return self.precioBase()
        }
    }
    method coordinadorACargo()
}    

class Nacional inherits Pack {
    const actividadesIncluidas = []

    override method agregarActvidad(actividad) {
        actividadesIncluidas.add(actividad)
    }

    override method provinciaDeDestino()
}

class Internacional inherits Pack {
    override method paisDeDestino()
    override method cantidadDeEscalas()
    override method esLugarDeInteres()
    override method valorFinal() = super() * 1.2
}

class Coordinador {
    var rol = guia
    var property viajes

    method cambiarDeRol(nuevoRol) {
        rol = nuevoRol
    }
    method rolDelGuia() {
        if (rol == Guia) {
            return Guia
        } else if (rol == AsistenteLogistico) {
            return AsistenteLogistico
        } else if (rol == Acompaniante) {
            return Acompaniante
        } else {
            self.error("No hay otro rol")
        }
    }
    method cantidadDeViajesRealizados()
    method estaMotivado()
    method aniosDeExperiencia()
    method altamenteCalificado() = viajes > 20 && rol.altamenteCalificado()
}

class Guia {
    override method altamenteCalificado() = super() && estaMotivado()
}

class AsistenteLogistico {
    method altamenteCalificado() 
}

class Acompaniante {}

object trasladosPrivados {
    var property precio

    method tipo() = "Translados Privados"
    method estaVigente() =
}

object accesoASalasVIP {
    var property precio

    method tipo() = "Acceso a salas VIP"
    method estaVigente() 
}

object segurosAdicionales {
    var property precio

    method tipo() = "Seguros Adicionales"
    method estaVigente() 
}









