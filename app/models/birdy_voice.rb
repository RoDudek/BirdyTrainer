class BirdyVoice < ActiveRecord::Base
  mount_uploader :voice, VoiceUploader
  attr_accessible :name, :voice
end
