class DogsController < ApplicationController

  def index
    @dogs = Owner.all
    render json:
    { key: @dogs,
    keytwo: {keyone: "blah",
              one: @dogs

      }

    }
  end

    def show
      @my_dog = Dog.find(params[:id])
      puts "i can see al my dogs"
    end

end
