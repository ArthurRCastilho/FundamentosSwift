class Conta {
    var saldo = 0.0
    var nome: String
    
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

// Trecho de código suprimido

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(200)

var contaAna = Conta(nome: "Ana")
contaGiovanna.transferir(contaAna, 50)

print(contaGiovanna.saldo)
print(contaAna.saldo)


// => Agora, imagine que o nosso protótipo de projeto fique muito grande e complexo ao longo do tempo. Para fins organizacionais, podemos reunir todos os métodos
// envolvendo transferência, porque vamos supor que implementaremos novos métodos de transferência como, por exemplo, se a transferência pode ser realizada; se
// há saldo o suficiente para realizar essa transferência; se a conta destino é válida. Isto é, há vários métodos relacionados à transferência.

// => E para fins organizacionais, podemos acoplar todos esses métodos e funcionalidades em apenas um lugar. O Swift possui um tipo de dado chamado de Extension
// ("estender alguma coisa"), logo, podemos estender um tipo de dado existente que criamos ou não, e implementar novos métodos e funcionalidades dentro dessa extension.


// É possível usar essa extension em qualquer lugar, em outro arquivo, em outra pasta....
extension Conta {
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

let qntsLetrasTexto = "Arthur"

extension String {
   func contaCaracteres() -> Int {
       return self.count //Neste caso self é o objeto
    }
}
let texto = qntsLetrasTexto.contaCaracteres()
print(texto)

// Extensions não podem conter caracteristicas armazenadas.
