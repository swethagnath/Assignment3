class Answer < ApplicationRecord
	validates_presence_of :answer,:user_id,:question_id
	belongs_to :user
	belongs_to :question
end
