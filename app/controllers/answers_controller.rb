class AnswersController < ApplicationController
	def create
		@answer         =  Answer.new(answer_params)
		@answer.user_id = current_user.id
		@answer.save
		respond_to do |format|
			format.js
		end
	end
	def edit
		@answer = Answer.find(params[:id])
	end
	def update
		@answer = Answer.find(params[:id])
		@answer.update_attributes(answer_params)
		redirect_to companies_path
	end
	private
	def answer_params
		params[:answer].permit(:answer,:question_id,:user_id)
	end
end
