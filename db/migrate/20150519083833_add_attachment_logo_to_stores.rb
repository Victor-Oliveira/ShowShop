class AddAttachmentLogoToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :stores, :logo
  end
end
