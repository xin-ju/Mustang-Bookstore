class OrdersController < ApplicationController
  before_action :authenticate_user!
    def index #print all previous orders
      @orders = Order.all
      respond_to do |format|
        format.html {render :index, locals: { orders: @orders } }
    end
  end
    
    def show
        @order = Order.find(params[:id])
    end
    
    def new
        @order = Order.new

        respond_to do |format|
          format.html { render :new, locals: { order: @order } }
        end
    end

    def create
        @order = Order.new(order_params)
        current_cart.cart_items.each do |item|   #@current_cart
          @order.cart_items << item
          item.cart_id = nil
        end
        @order.save

        respond_to do |format|
          format.html do
              if @order.save
                  # success message
                  flash[:success] = "Order successfully created"
                  # redirect to index
                  redirect_to orders_url
              else
                  # error message
                  flash.now[:error] = "Error: Order could not be created"
                  # render new
                  render :new, locals: { order: @order }
              end
          end
      end

        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        #redirect_to root_path
      end
      
    private
        def order_params
          params.require(:order).permit(:credit_card_number, :exp_date, :security_code, :total, :created_at)
        end


end
