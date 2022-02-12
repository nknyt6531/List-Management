class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    #redirect_to
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customer_path(customer.id)
  end

  def destroy
     @customer = Customer.find(params[:id])
    @customer.destroy
    #redirect_to
  end


  private

  def customer_params
    params.require(:customer).permit(
      :last_name, :first_name, :last_name_kana, :first_name_kana,
      :gender_id, :birthday, :age, :post_code, :home_phone_number,
      :phone_number, :address)
  end

end