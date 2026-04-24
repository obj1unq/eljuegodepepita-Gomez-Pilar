import wollok.game.*
import silvestre.* // Asegurate que el nombre coincida con tu archivo de silvestre

object pepita {
    var energia = 100
    var posicionActual = game.at(3, 5)

    // Getter para el motor de Wollok
    method position() = posicionActual
    
    // Setter para que se pueda mover
    method position(nuevaPosicion) {
        posicionActual = nuevaPosicion
    }

    // Cambia de imagen si está en el mismo lugar que Silvestre
    method image() = if (self.estaAtrapada()) "pepita-gris.png" else "pepita.png"

    method estaAtrapada() = self.position() == silvestre.position()

    method comer(comida) {
        energia = energia + comida.energiaQueOtorga()
    }

    method volar(kms) {
        energia = energia - 10 - kms 
    }
}