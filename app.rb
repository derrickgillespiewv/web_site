require "sinatra"
require_relative "money_hash.rb"
require_relative"rand_name.rb"

get '/' do
erb :index
end 

get '/index' do
erb :index
end

post '/index' do 
end 


get '/enter_amount' do 
	erb :enter_amount
end 

post '/enter_amount' do
	money = params[:money]
	calc = params[:calc]
	calc = change_machine(money.to_f)
 	redirect '/amount_out?money=' + money + '&calc=' + calc
end

get '/amount_out' do 
	money = params[:money]
	calc = params[:calc]
	# calc = change_machine(money.to_f)
	erb :amount_out, :locals => {:money=>money, :calc=>calc}
end 

post '/amount_out' do
	calc = parms[:calc]
	money = params[:money]
end

get '/enter_amount' do 
	erb :enter_amount
end 

post '/enter_amount' do
	money = params[:money]
	calc = params[:calc]
	calc = change_machine(money.to_f)
 	redirect '/amount_out?money=' + money + '&calc=' + calc
end

#name pair code

get '/enter_name' do
    erb :enter_name
end

post '/pairs_out' do
    names = params.values
    names_two = names_two(names)
    erb :pairs_out, :locals => {:names_two => names_two}
end

# post '/amount_out' do
#   money = params[:money]
#   calc = change_machine(money)
#  # redirect '/enter_amount?calc=' + calc
# end


# require 'sinatra'
# require_relative "change_coin.rb"

# get '/' do
# erb :index
# end

# get '/user_change' do
#     erb :coin_change_page
# end

# post '/user_change' do
#     cents_given_to_me = params[:cents_given_to_me]
#     coins_given_to_customer = params[:coins_given_to_customer]
#     coins_given_to_customer = coin_changer(cents_given_to_me)
   
#     redirect '/results?cents_given_to_me=' + cents_given_to_me + '&coins_given_to_customer=' + coins_given_to_customer
# end

# get '/results' do
#     cents_given_to_me = params[:cents_given_to_me]
#     coins_given_to_customer = params[:coins_given_to_customer]
   
#     erb :results, :locals => {:cents_given_to_me => cents_given_to_me, :coins_given_to_customer => coins_given_to_customer}
# end