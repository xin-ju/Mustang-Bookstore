class WishlistsController < ApplicationController
    before_action :authenticate_user! 
   
    def show
        @wishlist_items = current_wishlist.wishlist_items
    end
end
