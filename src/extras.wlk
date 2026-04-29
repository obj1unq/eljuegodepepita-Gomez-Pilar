import wollok.game.*

class Manzana {
    var property position
    method image() = "manzana.png"
    method energiaQueOtorga() = 40
    method esMuro() = false
}

class Alpiste {
    var property position
    var property peso 
    method image() = "alpiste.png"
    method energiaQueOtorga() = peso 
    method esMuro() = false
}

class Muro {
    var property position
    method image() = "muro.png"
    method esMuro() = true
}


object nivel {
    const comidas = []

    method generarComida() {
        if (comidas.size() < 3) {
            const pos = self.posicionAlAzar()
            const nuevaComida = self.comidaAlAzar(pos)
            game.addVisual(nuevaComida)
            comidas.add(nuevaComida)
        }
    }

    method posicionAlAzar() {
        const x = (0..9).anyOne()
        const y = (0..9).anyOne()
        const pos = game.at(x, y)
        if (not game.getObjectsIn(pos).isEmpty()) return self.posicionAlAzar()
        return pos
    }

    method comidaAlAzar(pos) {
        if ((0..1).anyOne() == 0) {
            return new Manzana(position = pos)
        } else {
            return new Alpiste(position = pos, peso = (40..100).anyOne())
        }
    }

    method pepitaComio(comida) {
        comidas.remove(comida)
        game.removeVisual(comida)
    }
}


object nido {
    var property position = game.at(9, 9)
    method image() = "nido.png"
    method esMuro() = false
}


