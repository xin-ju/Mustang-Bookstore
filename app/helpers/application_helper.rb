module ApplicationHelper

  def active_class(path)
    if request.path == path
      return 'active'
    else
      return ''
    end
  end

  def current_cart
    if !session[:cart_id].nil? #If there is existing cart session
      Cart.find(session[:cart_id])
    else
      Cart.new
    end
  end

    
  def current_wishlist
  if !session[:wishlist_id].nil?
      Wishlist.find(session[:wishlist_id])
    else
      Wishlist.new
    end
  end

  def flash_class(level)
    bootstrap_alert_class = {
      "success" => "alert-success",
      "error" => "alert-danger",
      "notice" => "alert-info",
      "alert" => "alert-danger",
      "warn" => "alert-warning"
    }
    bootstrap_alert_class[level]
  end

    
end
