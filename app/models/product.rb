# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  brief_description  :text
#  full_description   :text
#  meta_keywords      :string(255)
#  sku                :string(255)
#  price              :decimal(, )
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Product < ActiveRecord::Base
  default_scope :order => 'name'
  
  attr_accessible 	:brief_description, :full_description, 
  					:meta_keywords, :name, :price, :sku, :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :name, :presence => true
  validates :sku, :uniqueness => true, :allow_nil => true, :allow_blank => true
  validates :price, :presence => true, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => [ 'image/jpeg', 'image/png' ]
end
