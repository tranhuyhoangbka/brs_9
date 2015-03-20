class RequestsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @requests = current_user.requests.order created_at: :desc
    @requests = @requests.paginate page: params[:page], per_page: 15
  end

  def new
    @request = current_user.requests.build
  end

  def create
    @request = current_user.requests.build request_params
    if @request.save
      flash[:success] = "Request is created!"
      redirect_to requests_url    
    end
  end  

  def destroy
    @request.destroy
    flash[:success] = "Request is deleted!"
    redirect_to requests_url
  end

  private
  def request_params
    params.require(:request).permit :book_name, :book_url, :state
  end   
end
