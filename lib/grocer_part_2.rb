require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each { |item|
    currentCouponItem = find_item_by_name_in_collection(item[:item], coupons)
    if currentCouponItem && item[:item] == currentCouponItem[:item] && item[:count] >= currentCouponItem[:num]
      item[:count] = item[:count] - currentCouponItem[:num]
      couponItem = {}
      couponItem[:item] = item[:item] + " W/COUPON"
      couponItem[:count] = currentCouponItem[:num]
      couponItem[:clearance] = item[:clearance]
      couponItem[:price] = currentCouponItem[:cost] / currentCouponItem[:num]
      cart.push(couponItem)
    end
  }
    cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each { |item|
    if item[:clearance] == true
      item[:price] *= .8
    end
  }
  cart
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
