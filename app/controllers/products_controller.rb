class ProductsController < ApplicationController

	def index
		@products = Product.all
		current_cart
	end

	def new
		@product = Product.new
	end

	def create
		@product.create(product_params)
	end

	private

		def product_params
			params.require(:product).permit(:name)
		end
end
