//: Playground - noun: a place where people can play

import UIKit


let ciudades = ["Cancun", "Guadalajara", "DF", "Monterrey"]

enum Ciudad : Int {
    case Cancun = 450, Guadalajara = 10, DF = 78, Monterrey = 512, Merida
}

func calcularDistancia (ciudad : Ciudad) -> Int {
    return Ciudad.Cancun.rawValue - ciudad.rawValue
}

calcularDistancia(Ciudad.Monterrey)