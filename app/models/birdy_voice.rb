class BirdyVoice < ActiveRecord::Base
  mount_uploader :voice, VoiceUploader
  attr_accessible :name, :voice
 
  def self.get_random
  	all[rand(1..(count))]
  end
end
