class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to customer_path(@customer.id)
  end

  def show
    @customer = Customer.find(params[:id])
    @post_comment = PostComment.new
    @user = current_user
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
    birthday = Date.new(
      params[:customer]['birthday(1i)'].to_i,
      params[:customer]['birthday(2i)'].to_i,
      params[:customer]['birthday(3i)'].to_i)
    params.require(:customer).permit(
      :last_name, :first_name, :last_name_kana, :first_name_kana,
      :gender_id, :age, :post_code,
      :home_phone_number,:phone_number,
      :address).merge(birthday: birthday)
  end

end