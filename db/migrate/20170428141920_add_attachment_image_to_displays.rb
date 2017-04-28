class AddAttachmentImageToDisplays < ActiveRecord::Migration[5.1]
  def self.up
    change_table :displays do |t|

      t.attachment :image

    end
  end

  def self.down

    remove_attachment :displays, :image

  end
end
