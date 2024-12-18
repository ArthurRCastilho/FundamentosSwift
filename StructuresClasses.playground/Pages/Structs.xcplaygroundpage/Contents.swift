// Muito parecido com classes

struct ContaCorrete {
    var saldo = 0.0
    var nome: String
    
    // Dentro de uma Struct não é possível modificar o atributo dentro de uma funcão
    
    
    // Para fazer isso é necessário colocar mutating, que torna a função légivel para alterar o atributo
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}


var contaCorrenteArthur = ContaCorrete(nome: "Arthur")

print(contaCorrenteArthur.saldo)
contaCorrenteArthur.depositar(1500)
print(contaCorrenteArthur.saldo)

var contaCorrenteCaio = ContaCorrete(nome: "Caio")
contaCorrenteCaio.depositar(200)
contaCorrenteCaio.sacar(100)
print(contaCorrenteCaio.saldo)

