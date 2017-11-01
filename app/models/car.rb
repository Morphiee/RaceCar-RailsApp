class Car
    attr_reader :make, :model, :lights, :parking
    def initialize(make, model, lights=false, parking=true)
        @speed = 0
        @make = make
        @model = model
        @lights = lights
        @parking = parking
    end
    def set_make(m)
        @make = m
    end
    def set_model(n)
        @model = n
    end
    def show_speed
        @speed
    end
    def accelerate
        @speed = @speed + 10
    end
    def brake
        if @speed >= 7
            @speed = @speed - 7
        elsif @speed < 7
            @speed = 0
        end
    end
    def toggle_lights
        @lights = !(@lights)
    end
    def toggle_parking
        @parking = !(@parking)
    end
end
