object feroz {
	var peso = 10
	method estaSaludable() = peso.between(20,150)
	method pesoNuevo(pesoNuevo) {
		peso = pesoNuevo
	}
	method sufrirCrisis() {
		peso = 10
	}
	method comer(alimento) {
		peso += (alimento.peso() * 0.1)
	}
	method correr() {
		peso = 0.max(peso - 1)
	}
	method soplar(casa) {
		peso = 0.max(peso - casa.resistencia())
		casa.derribarse()
	}
}
object casaDeLadrillos {
	var resistencia = (self.ladrillos() * 2) + (chanchito.peso() * 3)
	method ladrillos() = 100
	method resistencia() = resistencia
	method derribarse() {resistencia = 0}
}
object casaDeMadera {
	var resistencia = 5 + (chanchito.peso() * 2)
	method resistencia() = resistencia
	method derribarse() {resistencia = 0}
}
object casaDePaja {
	var resistencia = chanchito.peso()
	method resistencia() = resistencia
	method derribarse() {resistencia = 0}
}
object chanchito {
	method peso() = 70
}
object cazador {
	var municion = 2
	method peso() = 100
	method disparar() {
		municion -= 1
	}
	method lucharContraFeroz() {
		if(municion > 0){
			self.disparar()
			feroz.sufrirCrisis()
		} else {
			feroz.comer(self)
		}
	}
}
object caperucitaRoja {
	method peso() = 60 + canasta.peso()
	
}
object canasta {
	var cantidadDeManzanas = 6
	method peso() {return
		0.2 + (manzana.peso()*cantidadDeManzanas)
		}
		method manzanaSeCae() {
			cantidadDeManzanas -= 1
		}
}
object manzana{
	method peso() = 0.2
}

object abuelita {
	method peso() = 50
}