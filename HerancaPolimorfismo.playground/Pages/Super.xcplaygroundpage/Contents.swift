class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(saldo: Double = 0.0, nome: String) {
        self.saldo = saldo
        self.nome = nome
    }
}

class ContaPoupanca: Conta { // Classe que herda tudo da classe conta
    // A conta poupança tem os mesmos atributos e funções da classe Conta
    var possuiCartaoDebito: Bool
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("Agora tem cartão débito")
    }
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

class ContaCorrente: Conta {
    // O mesmo acontece com conta corrente
    func solicitarEmprestimo(_ valor: Double) {
        saldo += valor
        print("O cliente está solicitando emprestimo do valor de \(valor)")
        print("Agora seu saldo é de: \(saldo)")
        
        // Utilizado o super para chamar uma função da classe pai.
        super.depositar(valor)
    }
}

var contaPoupanca = ContaPoupanca(nome: "Arthur",
                                  possuiCartaoDebito: false)
contaPoupanca.depositar(50) // Aqui já é possível perceber que
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito() // Este método não está disponível na contaCorrente

var contaCorrente = ContaCorrente(nome: "Arthur")
contaCorrente.depositar(5000)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(2000)

print(contaCorrente.saldo)
