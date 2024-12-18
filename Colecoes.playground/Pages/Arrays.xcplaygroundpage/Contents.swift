var notas: [Double] = [8.5, 9.0, 7.2, 6.0]

print(notas[1])

notas.append(10)
notas.insert(7.3, at: 0) // 7.3 no index 0

var elementoRemovido = notas.removeLast()
var elementoRemovido2 = notas.remove(at: 3) // Remove o elemento no index 3
print(elementoRemovido)
print(elementoRemovido2)


for i in 0..<notas.count {
    print(notas[i])
}

for (index, elemento) in notas.enumerated() {
    print(index, elemento)
}
