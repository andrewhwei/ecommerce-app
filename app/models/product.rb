class Product < ActiveRecord::Base

  DISCOUNT_THRESHOLD = 2

  def sale_message
    if price < DISCOUNT_THRESHOLD
      return "Discount"
    else
      return "On-sale"
    end
  end

  def tax
    tax = (price * 0.09).round(2)
  end

  def total
    total = price + tax
  end

end
