require_relative 'config/environment'

class App < Sinatra::Base

  get ('/') do
    erb :user_input
  end

  post ('/') do
    phrase = params[:phrase]
    pig_obj = Piglatinizer.new(phrase)
    @pigtext = pig_obj.piglatinize
    erb :results
  end
    
end