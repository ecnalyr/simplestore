# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  price             :decimal(, )
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  brief_description :string(255)
#  full_description  :string(255)
#  meta_keywords     :string(255)
#  image_link        :string(255)
#  sku               :string(255)
#

class Product < ActiveRecord::Base
  attr_accessible 	:brief_description, :full_description, :image_link, 
  					:meta_keywords, :name, :price, :sku

  validates :name, :presence => true
  validates :sku, :uniqueness => true, :allow_nil => true
  validates :price, :presence => true, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }
end
