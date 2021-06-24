# Routed from POST /items/:id/add_to_cart

class ApplicationController < ActionController::Base
  
  helper_method :current_cart
  
  def current_cart
    session[:cart] ||= []
  end 
  
end 

def add_to_cart 
  # Get the item from the path
  @item = Item.find(params[:id])
  
   # Load the cart from the session, or create a new empty cart.
   current_cart << @item.id 
   
    # Save the cart in the session.
    session[:cart] = cart
end 

