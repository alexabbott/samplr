class AddAttachmentAudiofileToSamples < ActiveRecord::Migration
  def self.up
    change_table :samples do |t|
      t.attachment :audiofile
    end
  end

  def self.down
    remove_attachment :samples, :audiofile
  end
end
