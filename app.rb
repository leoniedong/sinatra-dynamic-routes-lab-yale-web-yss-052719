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
    string = ''
    params[:number].to_i.times do
      string += "#{params[:phrase]}"
    end
    string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      @a = @num1 + @num2
      "#{@a}"
    elsif @operation == "subtract"
      @a = @num1 - @num2
      "#{@a}"
    elsif @operation == "multiply"
      @a = @num1 * @num2
      "#{@a}"
    elsif @operation == "divide"
      @a = @num1 / @num2
      "#{@a}"
    else
      "nah"
    end
  end
end