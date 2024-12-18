var pontuacao = [
    "Arthur": 9.5,
    "Dhuly": 10,
    "Heitor": 6.0,
]

var pessoas: [String: Int] = [:] // Dicionario vazio
pessoas.reserveCapacity(4) // Reserva o espaço para o dicionário

print(pontuacao["Arthur"]!)
pontuacao.count
pontuacao.isEmpty
pontuacao["Hely"] = 30.0
pontuacao["Arthur"] = 50.0
print(pontuacao)


for (nome, pontuacao) in
    pontuacao {
    print("O usuário \(nome) fez \(pontuacao) pontos.")
}
