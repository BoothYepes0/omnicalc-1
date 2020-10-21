class ApplicationController < ActionController::Base
### Square 
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end
  def calculate_square
    @num = params.fetch("number").to_f
    @square_of_num = @num ** 2
    render({ :template => "calculation_templates/square_results.html.erb"})
  end
### Square Root
  def blank_square_root_form
    render({ :template => "calculation_templates/sroot_form.html.erb"})
  end
  def calculate_square_root
    @sroot = params.fetch("number").to_f
    @square_root_of_sroot = @sroot ** 0.5
    render({ :template => "calculation_templates/sroot_results.html.erb"})
  end
### Payment
  def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb"})
  end
  def calculate_payment
    @rate = params.fetch("apr").to_f/100
    @years = params.fetch("term").to_f
    @principal = params.fetch("amount").to_f
    @num = @rate/12 * @principal
    @denom = 1-(1+@rate/12)**(-@years*12)
    @payment = @num/@denom
    
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end

##### Random with Form
def blank_random_form
    render({ :template => "calculation_templates/rand_form.html.erb"})
  end  
def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/rand_results.html.erb"})
  end

end
