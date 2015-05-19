# -*- encoding : utf-8 -*-
class Store < ActiveRecord::Base
  has_many :products

  has_attached_file :banner,
                    :storage => :dropbox,
                    :dropbox_credentials => "#{Rails.root}/config/dropbox_config.yml",
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png",
                    :dropbox_options => { :path => proc { |style| "#{Rails.env}/#{style}/#{id}_#{banner.original_filename}"},
                                          :unique_filename => true }
  validates_attachment_content_type :banner, :content_type => /\Aimage\/.*\Z/
end
