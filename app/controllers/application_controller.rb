class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def cart
  # 	@cart = current_cart
  # end

  def current_cart
    @cart = session[:cart] ||= []
  end

  def add_to_cart
	current_cart << params[:product]
	# byebug
	redirect_to products_path
	# redirect_to homepage_path
  end

end
