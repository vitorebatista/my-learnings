module Reverseworld
  def self.puts text
    print text.reverse.to_s
  end
end

Reverseworld::puts 'O resultado é'
