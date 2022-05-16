puts "Qual a sua altura?"
height = gets.chomp.to_f
puts "e o seu peso?"
weight = gets.chomp.to_f

imc = weight / (height * height)

if imc < 18.5
  puts "abaixo do peso"

elsif imc < 25
  puts "saudavel"

elsif imc <= 30
  puts "peso em excesso"

elsif imc <= 35
  puts "obesidade grau I"

elsif imc < 40
  puts "obesidade grau II (severa)"

else
  puts "obesidade grau III (mórbida)"
end