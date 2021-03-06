class CompaniesController < ApplicationController
	def index
		@question = Question.new
	end
	def new
		@company = Company.new 
	end
	def create
		@company = Company.new(company_params)
		@company.save
		redirect_to "/users/sign_up", notice:"successfully created"
	end
	private
	def company_params
		params[:company].permit(:name)
	end
end
