module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
      @secret = secret
    end

    def guess(guess)
      if exact_match?(guess, 0)
        mark = '+'
      elsif number_match?(guess, 0)
        mark = '-'
      else
        mark = ''
      end
        @output.puts mark
    end

    def exact_match?(guess, index)
      @secret[index] == guess[index]
    end

    def number_match?(guess, index)
      @secret.include?(guess[index])
    end
  end
end
