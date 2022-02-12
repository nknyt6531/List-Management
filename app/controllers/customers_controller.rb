class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def customer_params
    params.require(:customer).permit(
      :last_name, :first_name, :last_name_kana, :first_name_kana, 
      :gender_id, :birthday, :age, :post_code, :home_phone_number, 
      :phone_number, :address)
  end

end