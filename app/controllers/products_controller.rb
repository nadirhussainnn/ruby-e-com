class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def show
  end

  # Creates form for new product on GET /products/new request
  def new
    @product = Product.new
  end

  # This is required when the /products/new form is submitted
   def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity  # we set 422 status code for validation errors
    end
  end

  # This action renders the edit form on url /products/:id/edit
  def edit
  end

  # This action updates the product when the edit form is submitted
  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  # This action deletes the product
  def destroy
    @product.destroy
    redirect_to products_path
  end


  # This is required to filter the parameters from the form submission for edit. Required for security.
  # Use strong parameters to allow only the permitted attributes.
  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.expect(product: [ :name ])
    end

end
