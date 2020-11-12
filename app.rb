require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase] * params[:number].to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num_one = params[:number1].to_i
    num_two = params[:number2].to_i
    if params[:operation] == "add"
      "#{num_one + num_two}"
    elsif params[:operation] == "subtract"
      "#{num_one - num_two}"
    elsif params[:operation] == "multiply"
      "#{num_one * num_two}"
    elsif params[:operation] == "divide"
      "#{num_one / num_two}"
    end
  end
end