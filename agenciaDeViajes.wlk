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

    method agregarActvidad(actividad) {
        actividadesIncluidas.add(actividad)
    }

    method provinciaDeDestino()
}

class Internacional inherits Pack {
    method paisDeDestino()
    method cantidadDeEscalas()
    method esLugarDeInteres()
    method valorFinal() = super() * 1.2
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









