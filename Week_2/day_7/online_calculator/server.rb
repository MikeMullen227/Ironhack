require "sinatra"

get "/" do
	erb(:calculate)
end

# require_relative "lib/calculator.rb"
# require_relative "lib/memorey_saver.rb"

# my_calculator = Calculator.new
# my_memory = MemorySaver.new

# get "/" do
#   @memery_number = my_memory.load
#   erb :home
# end

get "/calculate" do

  first = params[:first_number].to_i


  second = params[:second_number]. to_i

  if params[:operation] == "add"
    @result = my_calculator.add(first, second)
  elsif params[:operation]



post "/calculate_add" do
  	first = params[:first_number].to_f
  	second = params[:second_number].to_f
  	result = first + second
  	"#{first} + #{second} = #{result}"
end

post "/calculate_subtract" do
	first = params[:first_number].to_f
 	second = params[:second_number].to_f
  	result = first - second
    "#{first} - #{second} = #{result}"
end


post "/calculate_multiply" do
	first = params[:first_number].to_f
  	second = params[:second_number].to_f
  	result = first * second
  	"#{first} * #{second} = #{result}"
end


post "/calculate_divide" do
	first = params[:first_number].to_f
  	second = params[:second_number].to_f
  	result = first / second
  	"#{first} / #{second} = #{result}"
end

post "/charge_money" do
  # CHARGE THEM THAT MONEY

  redirect to("/payment_success")
end
