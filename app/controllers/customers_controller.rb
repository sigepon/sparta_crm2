class CustomersController < ApplicationController
  def index
  end

  def new
    @custmoer = Custmer.new
  end

  def create
    @custmoer = Customer.new(custmoer_params)
    if @custmoer.save
      redirect_to @custmoer
    else
      render :new
    end
  end

  def edit
    @custmoer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to @customer
    else
      render :edit
    end
  end

  def show
    @custmoer = Customer.faind(params[:id])
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customer_url
  end

  private

  def customer_params
    params.require(:customer).permit(
      :family_name,
      :given_name,
      :email
    )

  end
end












