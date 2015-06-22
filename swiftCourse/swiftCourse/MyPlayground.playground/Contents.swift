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



var nombres = ["daniel","Juan", "Rafael", "Paco"]

for (var i=0; i < nombres.count; i++){
    
    println("Hola \(nombres[i])")
    
}































