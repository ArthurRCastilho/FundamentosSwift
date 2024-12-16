var valor1: Int = 10
var valor2: Int = 20

var valorDouble1: Double = 2.5
var valorDouble2: Double = 3.5

var soma = valor1 + valor2
print(soma)

var subtracao = valor2 - valor1
print(subtracao)

var multiplicacao = valor1 * valor2
print(multiplicacao)

var divisao = valor2 / valor1
print(divisao)

var divisao2 = valorDouble1 / valorDouble2
print(divisao2)

var divisao3 = Double(valor1) / valorDouble1
print(divisao3)

var modulo = 5 % 2
print(modulo)

// Ordem de Precedencia é a mesma da matématica


// Outras formas de somar
valor1 += 30
print(valor1)


// Concatenação
var nome: String = "Arthur"
var sobrenome: String = "Rodrigues"
print(nome + sobrenome) // Nesse caso ficará tudo junto
print(nome + " " + sobrenome)

print("Meu nome é \(nome) \(sobrenome)")

