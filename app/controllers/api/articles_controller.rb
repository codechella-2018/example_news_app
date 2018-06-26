class Api::ArticlesController < ApplicationController
	def index
		response = Unirest.get("https://newsapi.org/v2/everything?q=bitcoin&apiKey=#{ENV['API_KEY']}")
		@news_articles = response.body['articles']
		render 'index.json.jbuilder'
	end
end
