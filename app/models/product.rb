class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :variants

  #has_many :order_items
  #has_many :orders, through: :order_items

  def visible_on_catalog?
    self.variant.each do |variant|
      variant.stock > 0 ? return true : false
  end
end
