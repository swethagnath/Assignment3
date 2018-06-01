class Question < ApplicationRecord
	validates_presence_of :question,:user_id
	belongs_to :user
	has_many :answers 
end