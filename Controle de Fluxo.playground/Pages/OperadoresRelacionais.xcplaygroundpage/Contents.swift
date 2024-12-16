var pontuacao1 = 8.0
var pontuacao2 = 10.0

pontuacao1 > pontuacao2 // false
pontuacao1 >= pontuacao2 // false

pontuacao1 < pontuacao2 // True
pontuacao1 <= pontuacao2 // True

pontuacao1 == pontuacao2 // false
pontuacao1 != pontuacao2 // True


var idade = 21
var adulto = idade >= 18
var possuiCNH = true

// And (e)
var podeDirigir = adulto && possuiCNH

// Or (Ou)
var podeDirigir2 = adulto || possuiCNH

// Negação
!adulto
