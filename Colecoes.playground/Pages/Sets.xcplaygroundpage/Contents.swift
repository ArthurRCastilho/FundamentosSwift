
var nomes: Set<String> = ["Hely", "Dhuly",
             "Heitor", "Arthur"] // Set de Strings

// Não é possível acessar o index de cada elemento, pois Set não possui index

nomes.contains("Dhuly") // True

// Set não permite elementos duplicados

nomes.insert("Carlos")
nomes.remove("Heitor")
