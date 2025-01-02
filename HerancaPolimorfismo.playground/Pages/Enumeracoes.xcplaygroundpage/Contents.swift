enum FormaDePagamento {
    case PIX
    case boleto
    case debito
}

class Conta {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case .PIX: print("O pagamento será realizado por PIX")
        case .boleto: print("O pagamento será realizado por Boleto")
        case .debito: print("O pagamento será realizado com saldo em conta")
        default: break
        }
    }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.pagamentoCartao(.PIX)
