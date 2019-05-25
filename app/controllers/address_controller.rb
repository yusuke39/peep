class AddressController < ApplicationController

  def new
    @address = Address.new
  end
  
  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:notice] = '住所を登録しました！'
      redirect_to controller: 'peep', action: 'index'
    else
      render :new
    end
  end

  private

  def address_params
    params.require(:address).permit(:zip_code, :prefecture, :city, :block_number, :building_name).merge(user_id: current_user.id)
  end
end
