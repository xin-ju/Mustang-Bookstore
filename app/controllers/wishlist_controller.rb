class WishlistController < ApplicationController

    def index
        wishlist = WishlistItem.all
        respond_to do |format|
            format.html { render :index, locals : { wishlist: wishlist } }
        end
    end


end
