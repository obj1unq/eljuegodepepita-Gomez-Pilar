import pepita.* 
import wollok.game.*

object silvestre {
  var property position = game.at(3,0)
  var property presa = pepita

  method image() = "silvestre.png"

  method position() = game.at(self.x(),0)

  method x() = presa.position().x()

}