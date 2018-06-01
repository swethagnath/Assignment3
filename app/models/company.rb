class Company < ApplicationRecord
	validates_presence_of :name
	has_many :users
	belongs_to :question
	has_many :questions
end
