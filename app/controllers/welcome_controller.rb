class WelcomeController < ApplicationController
before_filter :check_session_expiry #it doesn't make sense but i couldn't come up with a good idea for a before filter
layout 'application'


  $tick = 15
  def hello #you don't really need the action here
  	@time = Time.now
  	@name = params[:name]

  	if @name == 'doga' 
  	 	@name ='Welcome back ' + @name + ' !'  	
  	elsif @name != 'doga' && @name != nil
  		@name ='Your first time here ' + @name + ' !'
  	else
  		@name = 'Who are you people?' 
    end

  end

  private
  def check_session_expiry
    $tick -= 1
    if $tick < 1
      redirect_to "/students"
      $tick =15    
    end
  end

end
