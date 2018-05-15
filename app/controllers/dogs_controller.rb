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

    def ajax
    @json_stuff = JSON.parse(HTTParty.get(@base_url='1').body)
    end

    private

    def set_api
      @base_irl = "https://swapi.co/api/films/"
    end

end
