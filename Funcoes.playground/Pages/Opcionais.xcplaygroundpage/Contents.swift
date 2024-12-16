var telefone: String? // Variavel Opcional
telefone = "99999999"
print(telefone!)
// Necessário ! para comprovar que existe um valor dentro de Telefon

if telefone != nil {
    print(telefone!)
}

if let telefoneDesembrulhado = telefone { // Cria-se uma variável usavel apenas dentro do if, para pegar o valor de dentro do telefone, caso tenha
    print(telefoneDesembrulhado)
}

if let telefone = telefone {
    print(telefone.first)
}


func authenticar(usuario: String?, senha: String?) {
    guard let usuario = usuario, let senha = senha
        else { return }
    print(usuario)
    print(senha)
}

authenticar(usuario: "Arthur", senha: "123")
authenticar(usuario: "João", senha: nil) // Neste caso não irá rodar
