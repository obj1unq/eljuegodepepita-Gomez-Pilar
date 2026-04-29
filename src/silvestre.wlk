import pepita.* 
import wollok.game.*

object silvestre {
  var property position = game.at(3,0)
  var property presa = pepita

  method image() = "silvestre.png"

  method position() = game.at(self.x(),0)

  method x() = if (presa.position().x() > 3) presa.position().x() else 3

  method esMuro() = false

}