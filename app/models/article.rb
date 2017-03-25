class Article < ApplicationRecord
    #attr_accessor :title, :body, :type_id, :author_id
    belongs_to :type, required:true #association to Type model
    #guides.rubyonrails.or/association_basics.html

end
