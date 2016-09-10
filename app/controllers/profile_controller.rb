class ProfileController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def claim_device
    device_params = params.permit(device: [:serial])

    serial = device_params[:device][:serial]

    devices = Device.where(:serial => serial)

    if devices.length > 0
      user = current_user
      user.devices.push devices[0]
    end

    redirect_to action: 'show'
  end
end
