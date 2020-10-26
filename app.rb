require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

   get '/reversename/:name' do
      @user_name = params[:name]
      "#{@user_name.reverse}"
   end

   get '/square/:number' do
      @number = params[:number]
      @sq = @number.to_i * @number.to_i
      "#{@sq.to_s}"
   end

   get '/say/:number/:phrase' do
      @number = params[:number]
      @phrase = params[:phrase]
      "#{@phrase * @number.to_i}"
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
     @string = []
      params.each do |key, value|
        @string << value
      end
      "#{@string.join(" ")}"

   end

end
