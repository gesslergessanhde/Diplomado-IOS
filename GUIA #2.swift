import Foundation

//NOTA: ALGUNOS PROGRAMAS ESTAN COMENTARIADOS PARA NO CREAR CONFLICTO CON OTROS PROGRAMAS DONDE USE NOMBRES PARECIDOS DE VARIABLES (POR NO DECIR LOS MISMOS), NO ES QUE ESTEN MALOS. ESTO PASA DDEBIDO A QUE TODOS ESTAN EN EL MISMO DOCUMENTO     ----------------------------------------------------



print("-----------------GUIA#2-----------------")
print("-----------------Ejercicio de Perimetro-----------------")

// func calcularAreaYPerimetro(ancho: Int, alto: Int) -> (area: Int, perimetro: Int) {
//     let area = ancho * alto
//     let perimetro = 2 * (ancho + alto)
//     return (area, perimetro)
// }

// //Ejemplo de uso

// let resultado = calcularAreaYPerimetro(ancho: 5, alto: 10)
// print("Área: \(resultado.area)")
// print("Perímetro: \(resultado.perimetro)")

// print("-----------------Ejercicio de Area de Triangulo-----------------")

// // Validacion de los datos del triangulo

// func calcularAreaTriangulo(a: Double, b: Double, c: Double) -> Double? {
//     if (a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a) {
//         print("Los lados ingresados no forman un triángulo válido")
//         return nil
//     }

//     //Para calcular el area
//     let s = (a + b + c) / 2
//     let area = sqrt(s * (s - a) * (s - b) * (s - c))
//     return area
// }

// // validacion y imprime el area
// if let area = calcularAreaTriangulo(a: 3, b: 4, c: 5) {
//     print("El área del triángulo es \(area)")
// } else {
//     print("Datos inválidos para los lados del triángulo")
// }

print("-----------------Ejercicio de Estadisticas-----------------")

// Función para calcular las estadísticas (media, mediana y moda)
func calcularEstadisticas(numeros: [Int]) -> (media: Double, mediana: Double, moda: Int?) {
    let suma = numeros.reduce(0, +)
    // Calcula la media dividiendo la suma por la cantidad de elementos
    let media = Double(suma) / Double(numeros.count)

    // Ordena los números de menor a mayor
    let numerosOrdenados = numeros.sorted()

    // Calcula la mediana
    let mediana: Double
    if numerosOrdenados.count % 2 == 0 {
        mediana = Double(numerosOrdenados[numerosOrdenados.count / 2 - 1] + numerosOrdenados[numerosOrdenados.count / 2]) / 2.0
    } else {
        mediana = Double(numerosOrdenados[numerosOrdenados.count / 2])
    }

    // Cuenta la frecuencia de cada número en el array
    var frecuencia: [Int: Int] = [:]
    for numero in numeros {
        frecuencia[numero, default: 0] += 1
    }

    // Encuentra el número con la mayor frecuencia (la moda)
    let moda = frecuencia.max(by: { $0.value < $1.value })?.key

    return (media, mediana, moda)
}

// Llama a la función calcularEstadisticas con el array de números
let numeros = [1, 2, 2, 3, 4, 4, 4, 5]
let estadisticas = calcularEstadisticas(numeros: numeros)
print("Media: \(estadisticas.media)")
print("Mediana: \(estadisticas.mediana)")
print("Moda: \(estadisticas.moda ?? 0)")

print("-----------------Ejercicio de Matrices-----------------")
// // Función para sumar dos matrices
// func sumaMatrices(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]? {
//     // Verifica si las matrices tienen las mismas dimensiones
//     if matrizA.count != matrizB.count || matrizA[0].count != matrizB[0].count {
//         print("Las matrices no tienen las mismas dimensiones")
//         return nil
//     }

//     // Inicializa la matriz resultado copiando la estructura de matrizA
//     var matrizResultado = matrizA

//     // Suma los elementos de ambas matrices
//     for i in 0..<matrizA.count {
//         for j in 0..<matrizA[i].count {
//             matrizResultado[i][j] = matrizA[i][j] + matrizB[i][j]
//         }
//     }

//     return matrizResultado
// }

// // Matrices de ejemplo
// let matrizA = [[1, 2], [3, 4]]
// let matrizB = [[5, 6], [7, 8]]

// // Llama a la función sumaMatrices
// if let suma = sumaMatrices(matrizA: matrizA, matrizB: matrizB) {
//     // Imprime la matriz resultante
//     print("Suma de matrices: \(suma)")
// } else {
//     print("Error al sumar las matrices")
// }


print("-----------------Ejercicio Ordenamiento-----------------")

// func ordenarPorSeleccion(_ array: inout [Int]) {
//     for i in 0..<array.count {
//         var minIndex = i

//         for j in (i + 1)..<array.count {
//             if array[j] < array[minIndex] {
//                 minIndex = j
//             }
//         }

//         if minIndex != i {
//             array.swapAt(i, minIndex) // SWAPt ES INTERCAMBIAR EN LA SINTAXIS EJEMPLO DEL EJERCICIO
//         }
//     }
// }

// // Ejemplo de uso
// var numeros = [64, 25, 12, 22, 11, 90]
// ordenarPorSeleccion(&numeros)
// print("Array ordenado por selección: \(numeros)")


print("-----------------Ejercicio de Grafo-----------------")

// class Grafo {
//     //  adjList como un diccionario de listas de enteros
//     var adjList: [Int: [Int]]

//     // Constructor
//     init() {
//         adjList = [:]
//     }

//     // agregar una arista  al grafo
//     func agregarArista(_ desde: Int, _ hacia: Int) {
//         if adjList[desde] == nil {
//             adjList[desde] = []
//         }
//         adjList[desde]?.append(hacia)
//     }

//     //  realiza un recorrido en profundidad 
//     func dfs(inicio: Int) -> [Int] {
//         var visitados = Set<Int>()
//         var resultado = [Int]()
//         dfsUtil(inicio, &visitados, &resultado)
//         return resultado
//     }

//     // Método privado para el recorrido en profundidad
//     private func dfsUtil(_ nodo: Int, _ visitados: inout Set<Int>, _ resultado: inout [Int]) {
//         visitados.insert(nodo)
//         resultado.append(nodo)

//         if let vecinos = adjList[nodo] {
//             for vecino in vecinos {
//                 if !visitados.contains(vecino) {
//                     dfsUtil(vecino, &visitados, &resultado)
//                 }
//             }
//         }
//     }
// }

// // Ejemplo de uso
// let grafo = Grafo()
// grafo.agregarArista(0, 1)
// grafo.agregarArista(0, 2)
// grafo.agregarArista(1, 2)
// grafo.agregarArista(2, 0)
// grafo.agregarArista(2, 3)
// grafo.agregarArista(3, 3)

// let resultadoDFS = grafo.dfs(inicio: 2)
// print("Resultado del DFS desde el nodo 2: \(resultadoDFS)")


print("-----------------Ejercicio de Suma Recursiva-----------------")

func sumaRecursiva(n: Int) -> Int {
    if n == 0 {
        return 0
    } else {
        return n + sumaRecursiva(n: n - 1) // suma los valores de esta forma : 10 + sumaRecursiva(n : 9)
    }
}

func sumaIterativa(n: Int) -> Int {
    var suma = 0
    for i in 1...n {
        suma += i
    }
    return suma
}

let resultadoRecursivo = sumaRecursiva(n: 10)
let resultadoIterativo = sumaIterativa(n: 10)

print("Suma recursiva: \(resultadoRecursivo)")
print("Suma iterativa: \(resultadoIterativo)")

print("-----------Ejercicio Busqueda Binaria Recursiva-----------")

func busquedaBinariaRecursiva(array: [Int], valor: Int, inicio: Int, fin: Int) -> Int? {
    if inicio > fin {
      return nil
  }

  let medio = (inicio + fin) / 2

  if array[medio] == valor {
      return medio
  } else if array[medio] < valor {
      return busquedaBinariaRecursiva(array: array, valor: valor, inicio: medio + 1, fin: fin)
  } else {
      return busquedaBinariaRecursiva(array: array, valor: valor, inicio: inicio, fin: medio - 1)
  }
}

// Ejemplo de uso
let numerosOrdenados = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let valorBuscado = 7
if let posicion = busquedaBinariaRecursiva(array: numerosOrdenados, valor: valorBuscado, inicio: 0, fin: numerosOrdenados.count - 1) {
  print("El valor se encuentra en la posición \(posicion)")
} else {
  print("El valor no se encuentra en el array")
}


print("-----------Ejercicio Clase y metodo-----------")

class Coche { //clase con sus caracteristicas
    var marca: String
    var modelo: String
    var ano: Int

    init(marca: String, modelo: String, ano: Int) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
    }

    func describir() -> String { //uncion que entrega un string con los datos del coche
        return "Coche: \(marca) \(modelo), Año: \(ano)"
    }
}

let miCoche = Coche(marca: "Nissan", modelo: "Sentra", ano: 2006)
print(miCoche.describir())

print("-----------Ejercicio Struct rectangulo-----------")

struct Rectangulo {
    var ancho: Double
    var alto: Double
    //funciones para llamar de forma facil a las operaciones 
    func calcularArea() -> Double {
        return ancho * alto
    }

    func calcularPerimetro() -> Double {
        return 2 * (ancho + alto)
    }
}
//Ejemplo de uso
let miRectangulo = Rectangulo(ancho: 5.0, alto: 10.0)
print("Área: \(miRectangulo.calcularArea())")
print("Perímetro: \(miRectangulo.calcularPerimetro())")

print("-----------Ejercicio Protocolo VOLEABLE-----------")

protocol Volable {
  func volar() -> String
}

class Pajaro: Volable {
  func volar() -> String {
      return "El pájaro está volando"
  }
}

class Avion: Volable {
  func volar() -> String {
      return "El avión está despegando"
  }
}

let miPajaro = Pajaro()
let miAvion = Avion()

print(miPajaro.volar())
print(miAvion.volar())

print("-----------FIN AL FIN-----------")