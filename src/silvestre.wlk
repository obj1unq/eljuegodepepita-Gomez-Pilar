import pepita.* // Importa el objeto pepita
import wollok.game.*

object silvestre {
    // REQUERIMIENTO: Persigue en X
    // BONUS: No pasa del x = 3
    method position() {
        return game.at(pepita.position().x().max(3), 0)
    }

    method image() = "silvestre.png"
}