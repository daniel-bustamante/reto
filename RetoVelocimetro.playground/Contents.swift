//: Un velocimento de un automóvil digital

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    
    init(velocidadInicial : Velocidades){
        self.velocidad = velocidadInicial
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        var mensaje : String
        
        switch self.velocidad {
        case Velocidades.Apagado:
            self.velocidad = .VelocidadBaja
            mensaje = "Velocidad Baja"
        case Velocidades.VelocidadBaja:
            self.velocidad = .VelocidadMedia
            mensaje = "Velocidad Media"
        case Velocidades.VelocidadMedia:
            self.velocidad = .VelocidadAlta
            mensaje = "Velocidad Alta"
        case Velocidades.VelocidadAlta:
            self.velocidad = .Apagado
            mensaje = "Apagado"
        }
        
        return (self.velocidad.rawValue, mensaje)
    }
}

var auto = Auto(velocidadInicial: .Apagado)

for i in 1...20{
    print(auto.cambioDeVelocidad())
}

//Daniel Bustamante
