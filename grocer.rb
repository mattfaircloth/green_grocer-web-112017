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
  # code here
end

def checkout(cart, coupons)
  # code here
end
