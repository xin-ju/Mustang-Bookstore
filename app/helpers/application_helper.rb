module ApplicationHelper
    def active_class(path)
        if request.path == path
          return 'active'
        else
          return ''
        end
      end

      def current_cart
        if !session[:cart_id].nil?
            Cart.find(session[:cart_id])
        else
            Cart.new
        end
    end
    
end
