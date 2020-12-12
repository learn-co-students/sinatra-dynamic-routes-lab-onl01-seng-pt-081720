require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # 1
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  # 2 
  get '/square/:number' do
    @number = params[:number].to_i
    @squared_number = @number ** 2
    "#{@squared_number}"
  end

  # 3
  get '/say/:number/:phrase' do
    @final_string = ""
    @number_of_times = params[:number].to_i
    @phrase_from_url = params[:phrase]
    @number_of_times.times do
      @final_string << @phrase_from_url
    end
    @final_string
  end

  # 4
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @final_string = ""
    params.each do |key, value|
      if key != "word5"
        @final_string << value + " "
      else
        @final_string << value
      end
    end
    @final_string = @final_string + "."
    @final_string
  end

  # 5
  get '/:operation/:number1/:number2' do
    @operation_type = params[:operation].to_s
    @number_one = params[:number1].to_i
    @number_two = params[:number2].to_i
    @result = ""

    case @operation_type
    when "add"
      @result = (@number_one + @number_two).to_s
    when "subtract"
      @result = (@number_one - @number_two).to_s
    when "multiply"
      @result = (@number_one * @number_two).to_s
    when "divide"
      @result = (@number_one / @number_two).to_s
    else
      "You gave me an invalid operation type."
    end
    
    @result
  end

end