class TrainerController < ApplicationController
	def ask
    @birdyvoice=BirdyVoice.find(1)
	end

	protected


end
