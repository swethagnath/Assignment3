class QuestionsController < ApplicationController
	def create
		@question = Question.new( question_params)
		@question.save
		respond_to do |format|
			format.js
		end
	end
	def edit
		@question = Question.find(params[:id])
	end
	def update
		@question = Question.find(params[:id])
		@question.update_attributes(question_params)
		@question.save
		redirect_to companies_path
	end
	private 
	def question_params
		params[:question].permit(:question,:user_id,:company_id)
	end
end
