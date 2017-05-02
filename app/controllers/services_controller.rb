class ServicesController < ApplicationController
  def index
    # Find all services
    @all_services = Service.all

  end

  def show
    # Find one service
    @service = Service.find_by(id: params["id"])
  end

  def new
    # Shows a form
    @service = Service.new
  end

  def create
    # Handles the submission of a form
    service = Service.create( service_params() )
    redirect_to service_path(service)
  end

  def edit
    # Shows a form (with prefilled values)
    @service = Service.find_by(id: params["id"])
  end

  def update
    # Handles the submission of a form
    service = Service.find_by(id: params["id"])
    service.update( service_params() )
    redirect_to service_path(service)
  end



  def destroy
    # Deletes a particular record
    service = Service.find_by(id: params["id"])
    service.destroy
    redirect_to services_path()
  end

  private
    def service_params
      params.require(:service).permit(:name)
    end

end
