require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i**2
    @num.to_s
  end

  get get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      puts "#{@phrase}"
    end
  end

end
