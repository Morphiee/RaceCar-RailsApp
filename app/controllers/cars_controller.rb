class CarsController < ApplicationController
    def create
        @car = Car.new(params[:make], params[:model])
        @car.set_make(params[:make])
        @car.set_model(params[:model])
        cookies[:car] = @car.to_yaml
        if params[:make] == nil && params[:model] == nil
            @return_string = "Please enter a make and model!"
            render "create.html.erb"
        else
            cookies[:make] = params[:make]
            cookies[:model] = params[:model]
            redirect_to "/display/status"
        end
    end
end
