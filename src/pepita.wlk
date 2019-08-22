object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}
	
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method cuantoQuiereVolar(){
		var base = energia / 5
		if(energia. between(300, 400)){
			base += 10
		}
		if(energia%20 == 0){
			base += 15
			}
			return base	
		} 
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}