require_relative 'config/environment'
class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @user_name = params[:name]
    "#{@user_name}".reverse
  end

  get "/square/:number" do
    @num = params[:number].to_i ** 2
    @num.to_s
  end

  get "/say/:number/:phrase" do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times {str += "#{@phrase}\n"}
    str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @first_word = params[:word1]
    @second_word = params[:word2]
    @third_word = params[:word3]
    @fourth_word = params[:word4]
    @fifth_word = params[:word5]
    "#{@first_word} #{@second_word} #{@third_word} #{@fourth_word} #{@fifth_word}."
  end

  get "/:operation/:num1/:num2" do
    @oper = params[:operation]
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
      case @oper
        when "subtract"
          (@num1 - @num2).to_s
        when "add"
          (@num1 + @num2).to_s
        when "divide"
          (@num1 / @num2).to_s
        when "multiply"
          (@num1 * @num2).to_s
    end
  end

end