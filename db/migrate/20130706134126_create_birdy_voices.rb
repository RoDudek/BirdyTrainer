class CreateBirdyVoices < ActiveRecord::Migration
  def change
    create_table :birdy_voices do |t|
      t.string :name
      t.string :voice

      t.timestamps
    end
  end
end
