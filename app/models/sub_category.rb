class SubCategory < ActiveRecord::Base
  validates_presence_of :name, :category_id
  validates_uniqueness_of :name
  validates_numericality_of :category_id

  belongs_to :category
  has_many :products

end
