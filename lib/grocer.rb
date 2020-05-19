def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.reduce do |found_item=nil, item_hash|
    if item_hash[:item]==name
      return found_item=item_hash
    end
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  cart.reduce do |consolidated_cart=[], item_hash|
    item_name=item_hash[:item]
    item_found=find_item_by_name_in_collection(item_name, cart)
    if item_found {
      consolidated_cart = consolidated_cart.map { |x|
        if x[:item]==item_name do
          x[:count]+=1
        end
      }
    }
    else
      item_hash[:count]=1
      consolidated_cart << item_hash
    end
    consolidated_cart
  end
end
