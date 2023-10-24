class CalculatorController < ApplicationController
  def home
    render({:template => "my_templates/square"})
  end
  def square_results
    @number = params.fetch("number").to_f
    @square = @number**2
    render({:template => "my_templates/square_results"})
  end

  def square_root
    render({:template => "my_templates/square_root"})
  end
  def square_root_results
    @number = params.fetch("number").to_f
    @square_root = (@number)**0.5
    render({:template => "my_templates/square_root_results"})
  end

  def payment
    render({:template => "my_templates/payment"})
  end
  def payment_results
    @apr = (params.fetch("user_apr").to_f)/100
    @years = params.fetch("user_years").to_i
    @pv = params.fetch("user_pv").to_f
    payment_numerator = (@apr/12)*@pv
    payment_denominator = 1 - (1 + (@apr/12))**(-(@years*12))
    @user_payment = (payment_numerator/payment_denominator).round(2)
    render({:template => "my_templates/payment_results"})
  end

  def random
    render({:template => "my_templates/random"})
  end
  def random_results
    min = params.fetch("minimum").to_f
    max = params.fetch("maximum").to_f
    @user_rand = rand(min..max)
    render({:template => "my_templates/random_results"})
  end
end
