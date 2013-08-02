class PagesController < ApplicationController

	autocomplete :advisor, :name

	def home
		@questions = Question.all
	end

end