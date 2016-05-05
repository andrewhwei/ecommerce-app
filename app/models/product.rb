class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :categories, through: :categorized_products
  has_many :categorized_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, :description, :price, :in_stock, :supplier_id, presence: true
  validates :supplier_id, numericality: {only_integer: true}
  validates_numericality_of :price
  validates :name, uniqueness: true

  DISCOUNT_THRESHOLD = 5

  def sale_message
    if price < DISCOUNT_THRESHOLD
      return "Discount"
    else
      return "On-sale"
    end
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

  def check_status
    if in_stock
      return "In stock!"
    else
      return "Out of stock"
    end
  end

  def self.get_discount_threshold
    DISCOUNT_THRESHOLD
  end

end
