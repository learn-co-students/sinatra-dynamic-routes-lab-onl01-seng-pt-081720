require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 

    @name = params[:name]

    @name.reverse
  end

  get "/square/:number" do 

    (params[:number].to_i * params[:number].to_i).to_s
    
     
  end

  get "/say/:number/:phrase" do 
    num = params[:number].to_i
    string = ""
    while num > 0 
      string = string + params[:phrase]
      num = num - 1
    end

    string

  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 

    str = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get "/:operation/:number1/:number2" do 

    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    m = params[:operation]

    if m == "add" 
       answer = num1 + num2
      elsif m == "subtract"
        answer = num1 - num2
      elsif m == "multiply"
        answer = num1 * num2
      elsif m == "divide"
        answer = num1 / num2
      end

      answer = answer.to_s


  end


#wont work



end