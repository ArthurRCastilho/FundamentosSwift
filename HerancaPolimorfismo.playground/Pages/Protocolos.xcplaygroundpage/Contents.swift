protocol Conta50 {
    var saldo: Double { get set }
    
    func sacar(_ valor: Double)
    
    func depositar(_ valor: Double)
}

class ContaCorrente50: Conta50 {
    var saldo: Double
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(saldo: Double) {
        self.saldo = 0.0
    }
}
