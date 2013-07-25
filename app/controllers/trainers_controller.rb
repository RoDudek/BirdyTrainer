class TrainersController < ApplicationController
	def ask
    @birdyvoice=BirdyVoice.random
	end

	def check
	  @birdyvoice=BirdyVoice.find(params[:id])
	  if @birdyvoice.name == params[:name] 
	    redirect_to(ask_trainer_path, :notice => 'richtig!')
	  else
      redirect_to(ask_trainer_path, :error => "falsch, es war ein #{@birdyvoice.name}")
    end      
	end

end
