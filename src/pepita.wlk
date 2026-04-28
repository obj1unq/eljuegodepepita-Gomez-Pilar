import wollok.game.*
import silvestre.* 

object pepita {
    var energia = 100
    var property position = game.at(2, 5)

    method atrapada() {
      return silvestre.position().x() == self.position().x()
    }

    method image() = "pepita.png"

    method comer(comida) {
        energia = energia + comida.energiaQueOtorga()
    }

    method volar(kms) {
        energia = energia - 10 - kms 
    }
}