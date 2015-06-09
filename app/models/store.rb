# -*- encoding : utf-8 -*-
class Store < ActiveRecord::Base
  has_many :products

  has_attached_file :banner,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png"

  has_attached_file :logo,
                    :default_url => "/images/:style/missing.png"                  
  
  # has_attached_file :banner,
  #                   :storage => :dropbox,
  #                   :dropbox_credentials => "#{Rails.root}/config/dropbox_config.yml",
  #                   :styles => { :medium => "300x300>", :thumb => "100x100>" },
  #                   :default_url => "/images/:style/missing.png",
  #                   :dropbox_options => { :path => proc { |style| "#{Rails.env}/#{style}/#{id}_#{banner.original_filename}"},
  #                                         :unique_filename => true }

  validates_attachment_content_type :banner, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/

  before_save :default_values
  def default_values
    self.primary_color ||= '00A6A6'
    self.secondary_color ||= '00C1C1'
  end

end
