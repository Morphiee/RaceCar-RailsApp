class DisplayController < ApplicationController
    def status
        @car = YAML.load(cookies[:car])
    end
    def accelerating
        @car = YAML.load(cookies[:car])
        @car.accelerate
        cookies[:car] = @car.to_yaml
        render "status.html.erb"
    end
    def brake
        @car = YAML.load(cookies[:car])
        @car.brake
        cookies[:car] = @car.to_yaml
        render "status.html.erb"
    end
    def lights
        @car = YAML.load(cookies[:car])
        @car.toggle_lights
        cookies[:car] = @car.to_yaml
        render "status.html.erb"
    end
    def parking
        @car = YAML.load(cookies[:car])
        @car.toggle_parking
        cookies[:car] = @car.to_yaml
        render "status.html.erb"
    end
end
