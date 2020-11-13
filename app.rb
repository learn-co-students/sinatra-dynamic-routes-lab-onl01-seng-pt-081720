require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @r = params[:name]
    @r.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    (@phrase * @num).to_s 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @o = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    case @o

    when "add"
      (@n1+@n2).to_s
    when "subtract"
      (@n1-@n2).to_s
    when "multiply"
      (@n1*@n2).to_s
    when "divide"
      (@n1/@n2).to_s
    end
  end

end