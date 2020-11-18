require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    x = params[:name].reverse 
    "#{x}"  
  end

  get '/square/:number' do
    x = params[:number].to_i ** 2
    x.to_s   
  end  

  get '/say/:number/:phrase' do
    str = ""
    x = params[:number].to_i
    phrase = params[:phrase]
    x.times { str += "#{phrase}\n" }
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get '/:operation/:number1/:number2' do
    number_1 = params[:number1].to_i
    number_2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{number_1+number_2}"
    elsif params[:operation] == "subtract"
      "#{number_1-number_2}"
    elsif params[:operation] == "multiply"
      "#{number_1*number_2}"
    elsif params[:operation] == "divide"
      "#{number_1/number_2}"
    end
  end

end