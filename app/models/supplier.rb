class Supplier < ActiveRecord::Base
  has_many :products

  validates :name, :email, :phone, presence: true

end
