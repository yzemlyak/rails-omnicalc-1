class ZebraController < ApplicationController
  def homepage
    render({:template => "game_templates/homepage"})
  end
  def square_new
    render({:template => "game_templates/square_new"})
  end
  def square_new_results
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num ** 2
    render({:template => "game_templates/square_new_results"})
  end
  def square_root_new
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num ** 0.5
    render({:template => "game_templates/square_root_new"})
  end
  def square_root_new_results
    render({:template => "game_templates/square_root_new_results"})
  end
  def payment_new
    render({:template => "game_templates/payment_new"})
  end
  def payment_new_results
    @apr_num = ((params.fetch("user_apr").to_f)/100)/12
    @loan_term = params.fetch("user_years").to_f * 12
    @present_value = params.fetch("user_pv").to_f
    @numerator = @apr_num * @present_value
    @denominator = 1 - ((1+@apr_num) ** (@loan_term * -1))
    @the_result = @numerator / @denominator
    render({:template => "game_templates/payment_new_results"})
  end
  def random_new
    render({:template => "game_templates/random_new"})
  end
  def random_new_results
    @min_num = params.fetch("user_min").to_f
    @max_num = params.fetch("user_max").to_f
    @the_result = rand(@min_num..@max_num).to_f
    render({:template => "game_templates/random_new_results"})
  end
end
