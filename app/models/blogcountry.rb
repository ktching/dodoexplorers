class Blogcountry < ApplicationRecord
  belongs_to :blog
  belongs_to :country
end
