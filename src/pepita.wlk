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
	
	method salirAcomer (){
		self. vola (5)
		self.come(alpiste)
		self. vola (5)
	}
	
	method haceLoQueQuieras (){
		if(self. estaCansada()){
			self.come(alpiste)
		}
		if(self.estaFeliz()){
			self.vola(8)
		}
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


object mijo {
	var estaMojado = false
	
	method secarse(){
		estaMojado = false
	}
	
	method mojarse(){
		estaMojado = true
	}
	 method energiaQueOtorga(){
	 	return if(estaMojado) 15 else 20
	 }
	
}

object canelones {
	var tieneSalsa = false
	var tieneQueso = false
	
	method agregarSalsa(){
		tieneSalsa = true
	}
	
	method agregarQueso(){
		tieneQueso = true
	}
	
	method energiaQueOtorga(){
		if(tieneSalsa && tieneQueso) {
			return 32
		}
		if(tieneSalsa){
			return 25
		}
		
		if(tieneQueso){
			return 27
		}
		
		else{
			return 20
		}
	}
	
}


object roque {
	
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}












