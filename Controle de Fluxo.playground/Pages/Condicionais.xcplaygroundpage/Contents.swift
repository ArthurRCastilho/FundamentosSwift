var idade = 21

if idade >= 18 {
    print("Você pode tirar sua CNH")
} else {
    print("Você não pode tirar CNH")
}

var possuiCNH = true

if idade >= 18 && possuiCNH {
    print("Você pode dirigir")
} else {
    print("Você não pode dirigir ainda.")
}

var num1 = 10
var num2 = 10

if num1 > num2{
    print("o número \(num1) é maior que \(num2)")
} else if num1 == num2 {
    print("O número \(num1) é igual ao \(num2)")
} else {
    print("O número \(num1) é menor que \(num2)")
}


// Outra forma de trabalhar com if else
var idade2 = 20
idade2 >= 18 ? print("Maior de idade") : print("Não é maior de idade")
