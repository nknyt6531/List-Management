class ShiftsController < ApplicationController
  def index
    @shift = Shift.new
    @user = current_user
    @shifts = Shift.where(user_id: current_user)
  end

  def cretae
    @shift = Shift.new(shift_params)
    @shift.save
    redirect_to shifts_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def shift_params
    params.require(:shift).permit(:start, :finish)
  end

end
