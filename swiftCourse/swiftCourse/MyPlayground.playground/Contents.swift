import UIKit


println("Hola Mundo")
var variable = "un valor"
var variable2:String = "un string"

let constante = "esta es una constante"
let constante2 : String = " esta es otra constante"

var flotante : Double = 2.09090911111112

var entero = 1
var string = String(entero)
var doble:Double = Double(entero)

var cadena  = "1.5"

var parse = (cadena as NSString).doubleValue

var cadena3:String = "Numero: "
var numero43 = 1

var concatenado = "Numero : \(numero43)"

//Arreglos

var algunosEnteros = [Int]()
var unArreglo = ["uno","dos","tres"]
var valor0 = unArreglo[0]

var arreglo43 = []

var arregloFijo = [Int?](count:32, repeatedValue: nil)

//condicionales 

var valor = 1

if valor == 2 {
    println(valor)
} else if valor == 1 || !(valor == 3){
    println("Se cumplio la segunda condicion")
} else{
    println("No se cumplio la condicion")
}




//switch-case
switch valor{
case 1:
    println("uno")
case 2:
    println("dos")
default:
    println("nada")
}


var modelo = "iphone 6"

switch modelo{
case "nexus":
    println("uno")
case let modeloIphone where modelo.hasPrefix("iphone"):
    println(modeloIphone)
default:
    println("otro")
}



var nombres = ["Daniel","Juan", "Rafael", "Paco"]

for (var i=0; i < nombres.count; i++){
    
    println("Hola \(nombres[i])")
    
}


for nombre in nombres{
    println("Hola \(nombre)")
}

for i in 0..<4{
    println(nombres[i])
}


var i = 0
while i < 4{
    println("Ciclo \(i)")
    i++ //comentar esta linea para que el ciclo se realice de manera infinita.
    
}



i = 0
do{
    println("cliclo \(i)")
    i++
}while(i < 10)


//Funciones


func saluda(){
    println("Hola")
}


saluda()

func saludaA(nombre:String, apellido: String, edad: Int){
    
    println("Hola \(nombre) \(apellido) de \(edad)")
    
}


saludaA("Daniel", "Marquez", 26)


func suma (numero1: Int, numero2: Int)->Int{
    
    return numero1+numero2
    
}

var z = suma(2,3)


func operaciones(numero1 : Int, numero2 :Int) -> (suma:Int, resta:Int, multiplicacion: Int, division:Float) {
    
    var suma = numero1 + numero2
    var resta = numero1 - numero2
    var multiplicacion = numero1*numero2
    var division:Float = Float(numero1)/Float(numero2)
    return (suma, resta, multiplicacion, division)
}

var suma = 0
var resta = 0
var multiplicacion = 0
var division:Float = 0

var resultadoOperaciones = operaciones(3, 2)
suma = operaciones(3,2).suma
resta = resultadoOperaciones.resta
println(suma)

//mas de funciones

func sumaDe(numeros: Int...) -> Int{
    var suma = 0
    for numero in numeros{
        suma += numero
    }
    return suma
}

sumaDe(2,43,56)


func perimetro(numeroLados:Int, longLados:Double) -> Double{
    
    
    var resultado:Double = 0
    
    if numeroLados > 2 && numeroLados > 0{
    
        for var i = 0; i < numeroLados; i++ {
            
            resultado = resultado + longLados
    
        }
    
    
        return resultado
    } else {
        println("no es posible, lados son menos de 2")
        return resultado
    }
    
}


func perimetro(longLados:Double...) -> Double{
    
    var resultado:Double = 0
    if longLados.count > 2 {
    
        for long in longLados {
        
            resultado += long
    
        }
    
        return resultado
        
    } else{
        return resultado
    }
}


perimetro(3,4,5,6,1)

/// desarrollo de clases 


class SmartPhone{
    var marca = "apple"
    var modelo = "6s"
    
    
    
    func obtenerModelo()->String{
        return "Iphone \(modelo)"
    }
}


var unIphone = SmartPhone()
unIphone.obtenerModelo()


class SmartPhone2{
    var atributos = ["marca": "", "modelo": ""]
    
    func obtenerModelo() -> String{
        var modelo = atributos["modelo"]
        return modelo!
    }
    
    func obtenerMarca() -> String {
    
        var marca = atributos["marca"]
        return marca!
    }
    
    func estableceMarca(marca: String){
        atributos["marca"] = marca
    }
    
    func estableceModelo(modelo:String){
        atributos["modelo"] = modelo
    }
    
}

var telefono = SmartPhone2()
telefono.obtenerModelo()

telefono.estableceModelo("Nexus")
telefono.obtenerModelo()
telefono.estableceMarca("Motorola")
telefono.obtenerMarca()























