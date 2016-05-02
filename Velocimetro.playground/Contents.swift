//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}


class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = .Apagado
        print ("(\(velocidad.rawValue), \"\(velocidad)\")")
    }
    
     func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        switch velocidad{
        case .Apagado:
            velocidad = .VelocidadBaja
            break
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            break
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            break
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            break
        }
        var velStr :String = "\(velocidad)"
        velStr = velStr.stringByReplacingOccurrencesOfString("ad", withString: "ad ")
        return (velocidad.rawValue,"\(velStr)")
    }
}

var miAuto = Auto()
for var i in 0...19{
    print(miAuto.cambioDeVelocidad())
}
