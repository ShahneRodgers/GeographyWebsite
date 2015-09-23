class MainController < ApplicationController
	$path = "main/complete"
  def quiz
  end

  def complete
  	if (params && params[:countries])
      session[:current] = params[:countries]
      redirect_to '/login'
  	else
  		redirect_to root_path
  	end
  end
end
