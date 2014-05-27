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
      if @secret.include?(guess[0])
        @output.puts '-'
      else
        @output.puts ''
      end
    end
  end
end
