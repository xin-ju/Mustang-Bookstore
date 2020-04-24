class WishlistController < ApplicationController
    before_action :authenticate_user!
    def index
        wishlists = WishlistItem.all
        respond_to do |format|
            format.html { render :index, locals : { wishlists: wishlists } }
        end
    end


end
