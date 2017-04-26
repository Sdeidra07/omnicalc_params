class CalculationsController < ApplicationController
    
def square_results
    @user_num = params["user_num"].to_f
    @square = @user_num**2
    render("calculations/square.html.erb")
end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def flexible_square
    @user_num = params[:number].to_f
    @square = @user_num**2
    render("calculations/square.html.erb")
  end

  def flexible_square_root
    @user_num = params[:number].to_f
    render("calculations/flexible_square_root.html.erb")
  end

  def square_root_results
    @user_num = params["user_num"].to_f
    render("calculations/square_root_results.html.erb")
  end

  def square_root_form
    render("calculations/square_root_new.html.erb")
  end

  def monthly_payment
    @user_term = params[:number_of_years].to_f
    @user_rate = params[:interest_rate].to_f
    @user_loan = params[:present_value].to_f
    @numerator=((@user_rate/120000)*@user_loan)
    @period=(-@user_term*12)
    @monthly_rate=(@user_rate/120000)
    @payment= @numerator/(1-((1+@monthly_rate)**@period))
    @percentage=(@user_rate/100)
    render ("calculations/flexible_payment.html.erb")
  end

def payment_results
  @user_term = params["number_of_years"].to_f
  @user_rate = params["rate"].to_f
  @user_loan = params["present_value"].to_f

  @numerator=((@user_rate/1200)*@user_loan)
  @period=(-@user_term*12)
  @monthly_rate=(@user_rate/1200)
  @payment= @numerator/(1-((1+@monthly_rate)**@period))
  @percentage=(@user_rate)

  render ("calculations/payment_results.html.erb")
end

def payment_form
  render("calculations/payment_new1.html.erb")
end

def random_generator
@user_min = params[:min].to_i
@user_max = params[:max].to_i
@user_rand=rand(@user_min..@user_max)
render("calculations/flexible/random.html.erb")
end

def random_form
  render("calculations/random_new.html.erb")
end

def random_results
@user_min = params["min"].to_i
@user_max = params["max"].to_i
@user_rand=rand(@user_min..@user_max)
render("calculations/random_results.html.erb")
end
end