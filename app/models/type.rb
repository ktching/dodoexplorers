class Type < ApplicationRecord
    #attr_accessor :name
    has_many :articles #association to article model
    #guides.rubyonrails.or/association_basics.html
end
