class OrdersController < ApplicationController
    def index
      @order = Order.new
      #@order = Order.new(order_params)
      current_cart.cart_items.each do |item|   #@current_cart
        @order.cart_items << item
        item.cart_id = nil
      end
      @order.save
      
      #index - index.html
      @orders = Order.all
      end
    
    def show
        @order = Order.find(params[:id])
    end
    
    def new
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)
        current_cart.cart_items.each do |item|   #@current_cart
          @order.cart_items << item
          item.cart_id = nil
        end
        @order.save
        @orders = Order.all
        #Cart.destroy(session[:cart_id])
        #session[:cart_id] = nil
        #redirect_to root_path
      end
      
    private
        def order_params
          #params.require(:order).permit(:created_at)
          params.require(:order)
        end


end
