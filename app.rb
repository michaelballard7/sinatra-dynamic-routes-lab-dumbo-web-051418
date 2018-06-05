require_relative 'config/environment'

# dont forget it has to be returned as a sting

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do

    name = params[:name].reverse

  end

  get '/square/:number' do
    square = params[:number].to_i
    (square ** 2).to_s
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    phrase = params[:phrase]
    clean_str = " "

    n.times do
      clean_str += "#{phrase}\n"
    end
    clean_str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case op
    when "add"
      ans = num1 + num2
    when "subtract"
      ans =num1 - num2
    when "multiply"
      ans =num1 * num2
    when "divide"
      ans = num1 / num2
    else
      ans ="invalid"
    end

    ans.to_s

  end

end
