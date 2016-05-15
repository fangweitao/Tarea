//: Reto de programación 2
/* Enumeración & Clases 
   Christian Fernández */

import UIKit

enum Velocidades : Int {
    case    Apagado = 0,
            VelocidadBaja = 20,
            VelocidadMedia = 50,
            VelocidadAlta = 120

    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
}

class AutoClass {
    var velocidad : Velocidades
    
    init ( Velocidad: Velocidades ) {
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        var velocidadAnterior : Velocidades
        var mensaje : String?
        
        velocidadAnterior = self.velocidad
        
        if self.velocidad == Velocidades.Apagado {
            mensaje = "Apagado"
            self.velocidad = Velocidades.VelocidadBaja
        } else if self.velocidad == Velocidades.VelocidadBaja {
            mensaje = "Velocidad Baja"
            self.velocidad = Velocidades.VelocidadMedia
        } else if self.velocidad == Velocidades.VelocidadMedia {
            mensaje = "Velocidad Media"
            self.velocidad = Velocidades.VelocidadAlta
        } else if self.velocidad == Velocidades.VelocidadAlta {
            mensaje = "Velocidad Alta"
            self.velocidad = Velocidades.VelocidadMedia
        }
        
        return ( velocidadAnterior.rawValue , mensaje! )
        
    }
    
}

var auto = AutoClass(Velocidad: Velocidades.Apagado)


for i in 1...20 {
    
    var situacionActual = auto.cambioDeVelocidad()
    print ( "\(i).- \(situacionActual.actual) - \(situacionActual.velocidadEnCadena)" )
    
}


