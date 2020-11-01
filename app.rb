require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
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
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    result = 0
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    if params[:operation] == "add"
      result = n1 + n2
    elsif params[:operation] == "subtract"
      result = n1 - n2
    elsif params[:operation] == "multiply"
      result = n1 * n2
    elsif params[:operation] == "divide"
      result = n1 / n2
    end
    result = result.to_s
  end

end