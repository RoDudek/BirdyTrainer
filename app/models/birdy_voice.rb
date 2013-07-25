class BirdyVoice < ActiveRecord::Base
  mount_uploader :voice, VoiceUploader
  attr_accessible :name, :voice
 
  def self.random
  	ids=BirdyVoice.all.map{|birdy_voice| birdy_voice.id}
	anzahl=ids.size
	zufall=rand(anzahl)
	bird_id=ids[zufall]
	BirdyVoice.find(bird_id)
  end
end
