class ContaCorrete {
    var saldo: Double
    var nome: String
    
    // Na classe não precisa do Mutating
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    
    // Diferente da Struct aqui é necessário um construtor
    init(saldo: Double = 0.0, nome: String) {
        self.saldo = saldo
        self.nome = nome
    }
}

// Mesma forma de instanciar
var contaCorrenteArthur = ContaCorrete(nome: "Arthur")

print(contaCorrenteArthur.saldo)
contaCorrenteArthur.depositar(1500)
print(contaCorrenteArthur.saldo)

var contaCorrenteCaio = ContaCorrete(nome: "Caio")
contaCorrenteCaio.depositar(200)
contaCorrenteCaio.sacar(100)
print(contaCorrenteCaio.saldo)


