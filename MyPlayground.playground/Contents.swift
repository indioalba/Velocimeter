//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int{
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
}


class Auto{
    var velocidad: Velocidades
    
    // inicializamos la velocidad a Apagado
    init(){
        velocidad = Velocidades.apagado;
    }
    
    func cambioDeVelocidad()-> (actual :Int, velocidadEnCadena:String){
        let actual : Int = velocidad.rawValue
        var velocidadEnCadena : String;
        switch velocidad{
        case Velocidades.apagado:
            velocidad = Velocidades.velocidadBaja
            //actual = velocidad.rawValue
            velocidadEnCadena = "Apagado"
            break
        case .velocidadBaja:
            velocidad = Velocidades.velocidadMedia
            velocidadEnCadena = "Velocidad baja"
            break
        case .velocidadMedia:
            velocidad = Velocidades.velocidadAlta
            velocidadEnCadena = "Velocidad media"
            break
        case .velocidadAlta:
            velocidad = Velocidades.velocidadMedia
            velocidadEnCadena = "Velocidad Alta"
            break
        }
        return (actual, velocidadEnCadena)
    }
}

var auto = Auto()

// iteramos 20 veces
for i in 1...20{
    // recogemos los valores devueltos por el método en result
    let result = auto.cambioDeVelocidad()
    // imprimimos por pantalla
    print("\(i). \(result.actual), \(result.velocidadEnCadena)")
}
