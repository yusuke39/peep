class AddressController < ApplicationController

  def new
    @address = Address.new
  end
  
  def create
  end

  private

  def address_params
    params.require(:address).permit(:zip_code, :prefecture, :city, :block_number, :building_name)
  end
end
