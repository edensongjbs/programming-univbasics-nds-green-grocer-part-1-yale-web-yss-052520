require 'pry'

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
  new_cart=[]
  while cart[0] do
    first_new_item=cart[0]
    num_of_that_item=(cart.select {|e| e[:item]==first_new_item[:item]}).length
    first_new_item[:count]=num_of_that_item
    new_cart<<first_new_item
    cart.reject! {|e| e[:item]==first_new_item[:item]}
  end
  new_cart
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  #consolidated_cart=[]
  #cart.each do |item_hash|
  #  item_name=item_hash[:item]
  #  item_found=find_item_by_name_in_collection(item_name, consolidated_cart)
  #  if item_found
  #    consolidated_cart = consolidated_cart.map do |item_in_cart|
  #      if item_in_cart[:item]==item_name
  #        binding.pry
  #        item_in_cart[:count]+=1
  #      end
  #    end
  #  else
  #    item_hash[:count]=1
  #    consolidated_cart << item_hash
  #  end
  #  consolidated_cart
  #end
end
