require 'date'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = 'Joe'
		erb :goodbye
	end

	get '/date' do
		@day = Date::DAYNAMES[Date.today.wday]
		@month = Date::MONTHNAMES[Date.today.month]
		@day_of_month = Time.now.day
		@year = Time.now.year
		erb :date
	end

end
