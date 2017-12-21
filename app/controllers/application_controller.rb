class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :is_admin?

  before_action :block_ip_addresses

  protected

  def block_ip_addresses
    head :unauthorized if current_ip_address == "0.0.0.0.0"
  end

  def current_ip_address
    request.env['HTTP_X_REAL_IP'] || request.env['REMOTE_ADDR']
  end



end
