import wollok.game.*

object manzana {
	var property position = game.at(5, 5)
	const base= 5
	var madurez = 1
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

	method image() = "manzana.png"

}

object alpiste {
	var property position = game.at(7, 2)

	method image() = "alpiste.png"

	method energiaQueOtorga() {
		return 20
	} 

}
