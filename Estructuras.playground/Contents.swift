//: Playground - noun: a place where people can play

import UIKit

struct Automovil {
    let marca : String
    var precio : Double
    
    init(marca : String, precio : Double) {
        self.marca = marca
        self.precio = precio
    }
    
    func obtenerDescripcion() -> String{
        return ""
    }
}

var auto = Automovil(marca: "Renault", precio: 10000)

auto.precio = 15000;

print(auto.precio)
print(auto.marca)

class Producto {
    let marca : String
    var precio : Double = 0.0
    
    init (marca : String, precio : Double ) {
        self.marca = marca
        self.precio = precio
    }
    
    func calcularPrecioDeDescuento(porcentajeDeDescuento : Double) -> Double {
        return precio - (precio * porcentajeDeDescuento / 100)
    }
}



enum Seccion {
    case Introduccion, Indice, Conclusion
    
    init() {
        self = .Introduccion
    }
}

class Libro : Producto {
    var seccion = Seccion()
    let añoDePublicacion : Int
    
    init(marca : String, precio : Double, añoDePublicacion : Int) {
        self.añoDePublicacion = añoDePublicacion
        super.init(marca: marca, precio: precio)
    }
    
    convenience init(marca: String) {
        self.init(marca: marca, precio: 0.0, añoDePublicacion: 2000)
    }
    
    override func calcularPrecioDeDescuento(porcentajeDeDescuento : Double) -> Double {
        return super.calcularPrecioDeDescuento(porcentajeDeDescuento)
    }
}


var libro = Libro(marca: "Edelvives", precio: 19.95, añoDePublicacion: 1990)
libro.marca
libro.precio
libro.seccion
libro.añoDePublicacion
libro.calcularPrecioDeDescuento(50)

var nuevoLibro = Libro(marca: "Santillana")
nuevoLibro.precio
nuevoLibro.seccion
nuevoLibro.añoDePublicacion
nuevoLibro.marca


