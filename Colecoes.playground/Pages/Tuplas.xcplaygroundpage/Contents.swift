typealias Coordenadas = (x: Int, y: Double, z: Double)

var cordenadas: Coordenadas = (x: 5,y: 3.5, z: 4.5)
cordenadas.x
cordenadas.y
cordenadas.z

var pessoa = (nome: "Giovanna", idade: 22)
pessoa.nome
pessoa.idade

var (_, idade) = pessoa
print(idade)
