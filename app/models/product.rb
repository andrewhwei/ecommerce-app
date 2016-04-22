class Product < ActiveRecord::Base

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
