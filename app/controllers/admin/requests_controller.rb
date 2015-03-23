class Admin::RequestsController < ApplicationController
  before_action :authenticate_user!  
  before_action :admin_user

  def index    
    @requests = Request.order created_at: :desc
    @requests = @requests.paginate page: params[:page], per_page: 15
  end

  def update
    @request = Request.find params[:id]
    if @request.update_attributes request_params
      respond_to do |format|
        format.html {redirect_to admin_requests_url}
        format.js
      end
    end    
  end

  private
  def request_params
    params.require(:request).permit :state
  end
end