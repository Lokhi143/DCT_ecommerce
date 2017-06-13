class Product < ActiveRecord::Base
  has_many :cart_line_items
  has_many :reviews
  belongs_to :category
  belongs_to :sub_category
  #inbuit validation provided by rails
  validates_presence_of :name, :price, :category_id, :description, :stock, :sub_category_id
  validates_numericality_of :price, greater_than: 1
  validates_numericality_of :stock, greater_than_or_equal_to: 0
  validates_numericality_of :category_id,:sub_category_id, greater_than: 0
  validates_length_of :description, minimum: 10
  validates_length_of :name, minimum:4
  validate :check_for_cod_based_on_price #invoke custom validation method
  validate :check_for_cod_based_on_product_category
  validate :check_for_multiple_categories_cod

  #custom validation
  def check_for_cod_based_on_price
    if !self.price.nil?
      if self.price >50000 && self.cod_eligibility
        self.errors.add(:cod_eligibility, "not available for products greater_than 50000")
      end
    end
  end

  def check_for_cod_based_on_product_category
    if !self.category_id.nil?
      if category_id == 1
        self.errors.add(:cod_eligibility, "Electronics- no cod available")
      end
    end
  end

  def check_for_multiple_categories_cod
    if !self.category_id.nil?
      if (self.category_id == 1 || self.category_id == 3) && self.cod_eligibility
        self.errors.add(:cod_eligibility, "Electronics and watches not available for cod")
      end
    end
  end

end
