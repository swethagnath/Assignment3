class AnswersController < ApplicationController
	def create
		@answer = Answer.new(answer_params)
		@answer.save
		redirect_to companies_path
	end
	private
	def answer_params
		params[:answer].permit(:answer,:question_id,:user_id)
	end
end
