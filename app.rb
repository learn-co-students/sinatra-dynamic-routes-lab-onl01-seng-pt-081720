require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number_s = params[:number].to_i
    square = (@number_s**2).to_s
    square
  end

  get "/say/:number/:phrase" do 
    @number_p = params[:number].to_i
    @phrase = params[:phrase]
    str_phrase = ""
    @number_p.times{str_phrase << @phrase}
    str_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    str_phrase_2 = []
    str_phrase_2 << params[:word1]
    str_phrase_2 << params[:word2]
    str_phrase_2 << params[:word3]
    str_phrase_2 << params[:word4]
    str_phrase_2 << "#{params[:word5]}."
    str_phrase_2.join(" ")
  end

  #add, subtract, multiply or divide
  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      result = num1 + num2
      result.to_s
    elsif params[:operation] == "subtract"
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      result = num1 - num2
      result.to_s
    elsif params[:operation] == "multiply"
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      result = num1 * num2
      result.to_s
    elsif params[:operation] == "divide"
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      result = num1 / num2
      result.to_s
    end
  end

end