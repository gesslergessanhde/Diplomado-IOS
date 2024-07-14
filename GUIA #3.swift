import Foundation

print("-------Guia #3-------")
//Ejercicio Estado Pedido
print("-------Ejercicio Estado Pedido-------")
enum EstadoPedido {
  case procesando
  case enviado
  case entregado
}

protocol NotificacionPedido {
 func notificarCambiodeEstado (nuevoEstado: EstadoPedido)
}

class Pedido {



  var estado : EstadoPedido

  var Delegado : NotificacionPedido?

    func CambiarEstado( nuevoEstado : EstadoPedido) {
      estado = nuevoEstado

      if Delegado != nil {
        Delegado?.notificarCambiodeEstado(nuevoEstado : nuevoEstado )

      }

    }

        init (estado : EstadoPedido){
            self.estado = estado

        }

}

class GestorPedido : NotificacionPedido{

    func notificarCambiodeEstado (nuevoEstado: EstadoPedido) {
      print("El estado del pedido ha cambiado a \(nuevoEstado)")
    }

}

var gestor = GestorPedido()

var pedido = Pedido( estado: .procesando)
pedido.Delegado = gestor

pedido.CambiarEstado(nuevoEstado: .enviado)


//Funcion calculadora
print("-------Funcion calculadora-------")

class Calculadora {

  static func sumar(a : Int , b: Int) -> Int {

      return a + b
  }

  static func restar(a : Int , b: Int) -> Int {

      return a - b
  }
}

func calcular_suma_y_resta_totales (Numeros : [Int]) -> (suma_total: Int , resta_total: Int) {

    var suma_total = 0
    var resta_total = 0

    for numero in Numeros {

        suma_total = Calculadora.sumar(a: suma_total , b: numero) // primer numero pasa a ser el valor de la suma por ende cuando se le suma el numero B, se modifica suma_total
        resta_total = Calculadora.restar(a: resta_total , b: numero) // lo mismo con suma pero ahora se resta.

    }
    return (suma_total, resta_total)

}

// Ejemplo de uso.

var numero = [1,2,3,4,5]
var resultado = calcular_suma_y_resta_totales(Numeros: numero) // se llama a la funcion para que trabaje con el valor "numero" que es el array
print("Suma total : \(resultado.suma_total)")

print("Resta total: \(resultado.resta_total)")


// ejercicio Areas
print("-------ejercicio Areas-------")

protocol Figura {
    func calcularArea() -> Double
}

struct Cuadrado: Figura {
    var lado: Double

    func calcularArea() -> Double {
        return lado * lado
    }
}


struct Rectangulo: Figura {
    var ancho: Double
    var alto: Double

    func calcularArea() -> Double {
        return ancho * alto
    }
}


func calcularAreaTotal(figuras: [Figura]) -> Double {
    var areaTotal = 0.0

    for figura in figuras {
        areaTotal += figura.calcularArea()
    }

    return areaTotal
}

// Ejemplo de uso
var cuadrado = Cuadrado(lado: 4.0)
var rectangulo = Rectangulo(ancho: 3.0, alto: 5.0)
var figuras: [Figura] = [cuadrado, rectangulo]

var areaTotal = calcularAreaTotal(figuras: figuras)
print("Área total: \(areaTotal)")


//Ejercicio 4 casos matematicos.
print("-------Ejercicio 4 casos matematicos.-------")


enum OperacionMatematica : Double{

    case suma
    case resta
    case multiplicacion
    case division



}

class OperadorMatematico {

    static func realizarOperacion( a : Double, b : Double, operacion : OperacionMatematica ) -> Double{
        switch operacion  {

            case .suma:
            return a + b

            case .resta:
            return a - b 

            case .multiplicacion:
            return a * b 

            case .division:
            if b != 0 {
                return a / b 

            } 
                else {
            print( "Error : Divison por cero")
                return 0
            }

        }

    }

}

var resultadoSuma = OperadorMatematico.realizarOperacion( a : 10 , b : 5 , operacion: .suma)
print("El resultado de suma es \(resultadoSuma)")

var resultadoResta = OperadorMatematico.realizarOperacion( a : 10 , b : 5 , operacion: .resta)
print("El resultado de resta es \(resultadoResta)")


var resultadoMultiplicacion = OperadorMatematico.realizarOperacion( a : 10 , b : 5 , operacion: .multiplicacion)
print("El resultado de Multiplicacion es \(resultadoMultiplicacion)")

var resultadoDivision = OperadorMatematico.realizarOperacion( a : 10 , b : 5 , operacion: .division)
print("El resultado de division es \(resultadoDivision)")


//Ejercicio Empleado.
print("-------Ejercicio Empleado.-------")

protocol Empleado {
    func calcularSalario() -> Double
}

// RECORDA QUE CUANDO DICE IMPLEMENTAR SIGNIFICA ":" RECORDAAAA
class EmpleadoBase: Empleado {
    var salarioBase: Double

    init(salarioBase: Double) {
        self.salarioBase = salarioBase
    }

    func calcularSalario() -> Double {
        return salarioBase
    }
}


struct EmpleadoContrato: Empleado {
    var tarifaHora: Double
    var horasTrabajadas: Double

    func calcularSalario() -> Double {
        return tarifaHora * horasTrabajadas
    }
}

// Ejemplo de uso
let empleadoBase = EmpleadoBase(salarioBase: 3000.0)
let salarioBase = empleadoBase.calcularSalario()
print("Salario base del empleado: \(salarioBase)")

let empleadoContrato = EmpleadoContrato(tarifaHora: 15.0, horasTrabajadas: 40.0)
let salarioContrato = empleadoContrato.calcularSalario()
print("Salario por contrato del empleado: \(salarioContrato)")

print("-------Guia #3-------")

