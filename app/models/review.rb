class Review < ActiveRecord::Base
  belongs_to :company
  belongs_to :user

  has_many :category
end
