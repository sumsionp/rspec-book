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
      if @secret[0] == guess[0]
        mark = '+'
      elsif @secret.include?(guess[0])
        mark = '-'
      else
        mark = ''
      end
        @output.puts mark
    end
  end
end
