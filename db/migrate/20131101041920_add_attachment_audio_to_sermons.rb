class AddAttachmentAudioToSermons < ActiveRecord::Migration
  def self.up
    change_table :sermons do |t|
      t.attachment :audio
    end
  end

  def self.down
    drop_attached_file :sermons, :audio
  end
end
