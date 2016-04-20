class Product < ActiveRecord::Base

  DISCOUNT_THRESHOLD = 2

  def sale_message
    if price < DISCOUNT_THRESHOLD
      return "<Discount></Discount>"
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
end
