class AddAttachmentBannerToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :banner
    end
  end

  def self.down
    remove_attachment :stores, :banner
  end
end
