class ZebraController < ApplicationController
  def homepage
    @the_num = params.fetch("user_number").to_f
    render({:template => "game_templates/homepage"})
  end
  def square_new
    render({:template => "game_templates/square_new"})
  end
  def square_new_results
    render({:template => "game_templates/square_new_results"})
  end
  def square_root_new
    render({:template => "game_templates/square_root_new"})
  end
  def square_root_new_results
    render({:template => "game_templates/square_root_new_results"})
  end
  def payment_new
    render({:template => "game_templates/payment_new"})
  end
  def payment_new_results
    render({:template => "game_templates/payment_new_results"})
  end
  def random_new
    render({:template => "game_templates/random_new"})
  end
  def random_new_results
    render({:template => "game_templates/random_new_results"})
  end
end
