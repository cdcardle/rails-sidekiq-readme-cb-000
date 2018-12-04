class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def upload
    LeadsWorker.perform_async(params[:file].path)
    redirect_to customers_path
  end

end
