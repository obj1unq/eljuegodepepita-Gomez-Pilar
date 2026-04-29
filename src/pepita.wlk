import wollok.game.*
import silvestre.* 

object pepita {
    var property energia = 100
    var property position = game.at(2, 5)
    var juegoTerminado = false

    method image() = if (energia <= 0 || self.atrapada()) "pepita-gris.png" else "pepita.png"
    method atrapada() = silvestre.position() == self.position()

    method volar(nuevaPosicion) {
        const objetosEnDestino = game.getObjectsIn(nuevaPosicion)
        
        if (not juegoTerminado && energia > 0 && self.estaDentro(nuevaPosicion) && not self.hayMuro(objetosEnDestino)) {
            const distancia = self.position().distance(nuevaPosicion)
            energia = (energia - 9 * distancia).max(0)
            position = nuevaPosicion
            if (energia <= 0) { game.say(self, "¡Me cansé!") }
        }
    }

    method caer() {
        const abajo = self.position().down(1)
        if (not juegoTerminado && abajo.y() >= 0 && not self.hayMuro(game.getObjectsIn(abajo))) {
            position = abajo
        }
    }

    method hayMuro(lista) = if (lista.isEmpty()) false else lista.first().esMuro()

    method estaDentro(p) = p.x().between(0, 9) && p.y().between(0, 9)

    method comer(c) { energia += c.energiaQueOtorga() }
    
    method terminar() { juegoTerminado = true }
}