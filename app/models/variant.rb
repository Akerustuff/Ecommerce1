class Variant < ApplicationRecord
  belongs_to :product
  belongs_to :size
  belongs_to :color

  validates :product_ids, uniqueness: { scope [:color_id, :size_id]}
end
