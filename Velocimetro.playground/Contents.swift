//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        var textoSalida : String
        let velocidadSalida = velocidad.rawValue
        
        switch velocidad {
        case .Apagado:
            textoSalida = "Apagado"
            velocidad = .VelocidadBaja
            break
        case .VelocidadBaja:
            textoSalida = "Velocidad baja"
            velocidad = .VelocidadMedia
            break
        case .VelocidadMedia:
            textoSalida = "Velocidad media"
            velocidad = .VelocidadAlta
            break
        case .VelocidadAlta:
            textoSalida = "Velocidad alta"
            velocidad = .VelocidadMedia
            break
        }
        
        return (velocidadSalida, textoSalida)
    }
}

var auto = Auto()

var resultado : (Int, String)

for var i = 0; i < 20; i++ {
    resultado = auto.cambioDeVelocidad()
    print("\(resultado.0), \(resultado.1)")
}