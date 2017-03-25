class Post < ApplicationRecord
	has_many :stories
	has_many :categories, through: :stories
end
