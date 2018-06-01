class AnswersController < ApplicationController
	def create
		@answer = Answer.new(answer_params)
		@answer.save
		respond_to do |format|
			format.js
		end
	end
	private
	def answer_params
		params[:answer].permit(:answer,:question_id,:user_id)
	end
end
