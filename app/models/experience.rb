class Experience < ApplicationRecord
	has_many :blogexperiences
	has_many :blogs, through: :blogexperiences
end
