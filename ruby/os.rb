require 'os'

def my_os
  if OS.windows?
    "Windows"
  elsif OS.linux?
  "Linux"
  elsif OS.mac?
  "MacOS"
  else
    "Erro"
  end
end

puts "Meu computador é um #{my_os}, possui #{OS.cpu_count} cores e o SO é de #{OS.bits} bits"