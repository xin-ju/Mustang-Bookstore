class WishlistsController < ApplicationController
    def show
        @wishlist_items = current_wishlist.wishlist_items
    end
end
