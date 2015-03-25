class Category < ActiveRecord::Base
  belongs_to :review
  belongs_to :company
end
