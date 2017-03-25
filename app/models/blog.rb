class Blog < ApplicationRecord
	has_many :blogexperiences
	has_many :experiences, through: :blogexperiences
	has_many :blogcountries
	has_many :countries, through: :blogcountries

	extend FriendlyId
	friendly_id :title, use: [:slugged, :history]

end
