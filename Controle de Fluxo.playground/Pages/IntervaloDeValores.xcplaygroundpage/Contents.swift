var intervaloFechado = 10...20 // numero 20 está incluso (10 a 20)
var intervaloSemiAberto = 10..<20 // não inclui o 20 (10 a 19)

var num = 20

switch num {
case 0...10: print("O numero está entre 0 e 10")
case 10...20: print("O numero está entre 10 e 20")
default: print("Número é maior do que 20")
}

var animal = "Cachorro"

switch animal {
case "Cachorro", "Gato": print("Animal Domestico")
default: print("Animal Selvagem")
}

switch num {
case _ where num % 2 == 0: print("O numero \(num) é par")
case _ where num % 2 != 0: print("O numero \(num) é impar")
default: break
}


var numeroAleatorio = Int.random(in: 0...100)
print(numeroAleatorio)
