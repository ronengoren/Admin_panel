class DoggytreatsController < ApplicationController

  def showmytreat
      puts 'I CAN SEE ALL MY TREATS'
      @owners = Owner.all
      render 'dogs/mycustomtamplate'
  end

end
