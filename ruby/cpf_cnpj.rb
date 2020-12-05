require "cpf_cnpj"

puts "Informe um CPF"

begin
  cpf = gets
  
  Gem.win_platform? ? (system "cls") : (system "clear") #puts `clear`

  isValid = CPF.valid?(cpf)
  if !isValid
    puts "\nErro: CPF inválido, informe novamente:"
  end
end while !isValid

cpf = CPF.new(cpf)

puts "\nCPF válido: #{cpf.formatted}"