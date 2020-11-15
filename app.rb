require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name] 
    @name.reverse
  end 

  get '/square/:number' do 
   @num = params[:number].to_i
   @squared = @num * @num 
   @squared.to_s 
  end 

  get '/say/:number/:phrase' do 
    @phrase = params[:phrase] 
    @amount = params[:number].to_i
     
    return @phrase * @amount
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    #@words = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5] 

    @words = "#{params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]}."
    @words
  end 

  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]
    if @op == "add" 
       "#{@num1 + @num2}"
    elsif @op == "subtract" 
       "#{@num1 - @num2}"
    elsif @op == "multiply" 
       "#{@num1 * @num2}"
    elsif @op == "divide" 
       "#{@num1 / @num2}"
    end 
    
    #puts "#{@num1 @op @num2}"
  end 

end