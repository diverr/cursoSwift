//: Playground - noun: a place where people can play

import UIKit



enum LecturaDeDatos {
    case Digitos(Int, Int, Int)
    case QrCodigo(String)
}


var entradaDatos = LecturaDeDatos.Digitos(3, 4, 5)

entradaDatos = .QrCodigo("234343")

switch entradaDatos {
case .Digitos(let uno, let dos, let tres):
        print("\(uno) \(dos) \(tres)")
case .QrCodigo(let qr):
        print(qr)
}


enum Planetas : Int {
    case Tierra = 305, Marte = 400, Jupiter = 500
    
    init() {
        self = .Marte
    }
    
    func calculaDistancia(dato : Planetas) -> Int {
        return self.rawValue - dato.rawValue
    }
}

let planeta = Planetas()

planeta.calculaDistancia(Planetas.Jupiter)
planeta.calculaDistancia(Planetas.Tierra)