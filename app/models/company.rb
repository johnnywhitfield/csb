class Company < ActiveRecord::Base
	has_many :review
	has_many :category

end
