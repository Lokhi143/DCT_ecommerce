class Review < ActiveRecord::Base
	belongs_to :product
	belongs_to :user


	validates_presence_of :product_id, :user_id, :title, :rating
	validates_numericality_of :product_id, :user_id, greater_than: 0
	validates_numericality_of :rating, within: 1..5
	validates_length_of :body, minimum: 10, allow_blank: true
end
