require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    result = ""
    @number.times { result << @phrase + "\n" }
      result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5}"
  end

  get '/:operation/:number1/:number2' do
    @opertion = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]

    if @operation == "add"
      @number1 + @number2
    elsif @operation == "subtract"
      @number1 - @number2
    elsif @operation == "divide"
      if @number1 != 0
        @number1 / @number2
      else "division by zero!"
      end
    elsif @operation == "multiply"
      @number1 * @number2
    end
  end

end
