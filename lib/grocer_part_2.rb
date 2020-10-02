require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each { |item|
    if item[:item] == coupons[:item] && item[:count] > coupons[:num]
      item[:count] -= coupons[:num]
      couponItem[:item] = item[:item] + " W/COUPON"
      couponItem[:count] = coupons[:num]
      couponItem[:clearance] = item[:clearance]
      couponItem[:price] = coupons[:cost] / coupons[:num]
      cart.push(couponItem)
    end
    cart
  }
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
