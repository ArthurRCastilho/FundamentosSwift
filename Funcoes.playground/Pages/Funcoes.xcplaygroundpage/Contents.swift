// Com parametros nomeados
func soma(numero1: Int, numero2: Int) {
    var resultado = numero1 + numero2
    print(resultado)
}

soma(numero1: 3, numero2: 5)

// Parametros não nomeados
func soma2(_ numero1: Int,_ numero2: Int) {
    var resultado = numero1 + numero2
    print(resultado)
}

soma2(4, 5)

// Apenas um parametro com qualquer nome
func soma3(_ numero1: Int, com numero2: Int) {
    print(numero1+numero2)
}

soma3(4, com: 10)



func multiplicacao(_ numero1: Int, _ numero2: Int) -> Int {
    return numero1 * numero2
}

multiplicacao(2, 6)


func verificarAdulto(_ idade: Int) -> Bool {
    return idade >= 18
}
print(verificarAdulto(21))


// Obs para alterar um valor recebido na função é necessário inout na função

func somarMaisUm(_ numero: inout Int) {
    numero += 1
    print(numero)
}
var valor = 10
somarMaisUm(&valor) // importante a variavel ser declarada como var
print(valor)
