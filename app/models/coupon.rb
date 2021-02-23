class Coupon < ApplicationRecord
  belongs_to :user, optional: true

#  kind massive o target
#  code
#  amount percent or fixer-amount
#  discount percent or fixed
#  user only for target Coupon
#  available was used?

  def used_coupon
    self.available = false
    self.save
  end

  def compute_total(total)
    if discount.eq?('percent')
      percent_value = amount.to_f / 100
      total = total - (total * percent_value)
    else
      total = total - amount
      (total < 0) ? 0 : total
    end
  end

end

#Controller
#Antes de realizar el pago
Coupon.find_by(code: get_code_from_params)
if coupon.available?
  price = coupon.compute_total(order.total)
end

#Controller
#Despues de realizar el pago
coupon.used_coupon
