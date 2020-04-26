class WishlistItemsController < ApplicationController

    def create 
       
        @wishlist = current_wishlist
        @wishlist_item = @wishlist.wishlist_items.new(wishlist_params)
        @wishlist.save
        session[:wishlist_id] = @wishlist.id
    end

    def update
       
        @wishlist = current_wishlist
        @wishlist_item = @wishlist.wishlist_items.find(params[:id])
        @wishlist_item.update_attributes(wishlist_params)
        @wishlist_items = current_wishlist.wishlist_items
    end

    def destroy
        
        @wishlist = current_wishlist
        @wishlist_item = @wishlist.wishlist_items.find(params[:id])
        @wishlist_item.destroy
        @wishlist_items = current_wishlist.wishlist_items
    end

    private

    def wishlist_params
        params.require(:wishlist_item).permit(:book_id, :quantity) 
    end
end
