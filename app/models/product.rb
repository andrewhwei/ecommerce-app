class Product < ActiveRecord::Base

  def sale_message
    if price < 2
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
