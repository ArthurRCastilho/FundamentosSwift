// A principal diferença:
//      Classes possui um tipo de referência
//      Já Structs possui um tipo de valor

// Exemplo:
//      Se você compartilha um link do docs para seu colega, e os dois começam a editar, ambos irão ver as edições em tempo real
//      Agora quando você cria uma cópia do documento, e envia para seu amigo, as alterações não tem ligação nenhuma

//      (Classes)Referência: Quando ambos estão usando o mesmo objeto
//      (Structs)Valor: Quando usa-se tipo uma cópia do objeto
struct ContaCorrenteStruct {
    var saldo = 0.0
    var nome: String

    // Um das diferenças entre ambas, é necessário usar mutating para alterar o valor de algum atributo
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}
// Se a struct for declarada como constante (let) não é possível alterar os atributos, pois são constantes
var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")

var contaCorrenteStruct02 = contaCorrenteStruct01 // Cada um vai ter sua edição própria
// Já que é uma cópia, não é um arquivo compartilhado

contaCorrenteStruct01.depositar(100)
contaCorrenteStruct02.depositar(50)
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")
print("Saldo da conta corrente struct 02 = \(contaCorrenteStruct02.saldo)") // Cada um vai ter seu valor independente


class ContaCorrenteClass {
    var saldo = 0.0 // Não precisa estar inicializado no construtor
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    
    // Na classe é obrigatório ter um construtor, caso os atributos não tenham sido inicializados antes
    init(nome: String) {
        self.nome = nome
    }
}

// Com classe mesmo que seja declarada como constante (let) ainda é possível alterar os atributos
let contaCorrenteClasse01 = ContaCorrenteClass(nome: "Ana")

let contaCorrenteClasse02 = contaCorrenteClasse01 // Aqui ambos serão editados juntos diferente da Struct

contaCorrenteClasse01.depositar(60)
contaCorrenteClasse02.depositar(100)
print("Saldo da conta corrente classe 01 = \(contaCorrenteClasse01.saldo)")
print("Saldo da conta corrente classe 02 = \(contaCorrenteClasse02.saldo)") // Vai aparecer o mesmo valor em ambos.
