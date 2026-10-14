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
    method esPremiun()
}    

class Nacional inherits Pack {
    const actividadesIncluidas = []

    method agregarActvidad(actividad) {
        actividadesIncluidas.add(actividad)
    }

    method provinciaDeDestino()
    override method esPremiun() = self.duracion() > 10
    method cordinadorCalificado() {}
}

class Internacional inherits Pack {
    method paisDeDestino()
    method cantidadDeEscalas()
    method esLugarDeInteres()
    method valorFinal() = super() * 1.2
}

class Coordinador {
    var rol = Guia
    var property viajes
    const property estaMotivado
    const property aniosDeExperiencia

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
    method altamenteCalificado() = (viajes > 20) && (rol.calificado())
}

class Guia inherits Coordinador {
    override method calificado() = super() && estaMotivado
}

class AsistenteLogistico inherits Coordinador {
    override method calificado() = super() && aniosDeExperiencia > 3
}

class Acompaniante inherits Coordinador {
    override method calificado() = super() && true
}

object trasladosPrivados {
    var property precio

    method tipo() = "Translados Privados"
    method estaVigente() {}
}

object accesoASalasVIP {
    var property precio

    method tipo() = "Acceso a salas VIP"
    method estaVigente() {}
}

object segurosAdicionales {
    var property precio

    method tipo() = "Seguros Adicionales"
    method estaVigente() {}
}









