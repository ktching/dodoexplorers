class Country < ApplicationRecord
	has_many :blogcountries
	has_many :blogs, through: :blogcountries
	belongs_to :continent
end
