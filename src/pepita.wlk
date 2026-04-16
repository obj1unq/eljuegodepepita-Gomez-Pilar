import wollok.game.*

object pepita {

	var energia = 100
	var property position = game.at(3, 5)

	method position(nuevaPosition) {
		position = nuevaPosition
	}

    method image() = "pepita.png"

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

}

