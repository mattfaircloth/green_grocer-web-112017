def consolidate_cart(cart)
  cart.each_with_object({}) do |item_name, info|
    item_name.each do |product, descriptors|
      if info[product]
        descriptors[:count] += 1
      else
        descriptors[:count] = 1
        info[product] = descriptors
      end
    end
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  cart.each do |name, properties|
    if properties[:clearance]
      updated_price = properties[:price] * 0.80
      properties[:price] = updated_price.round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  # code here
end
