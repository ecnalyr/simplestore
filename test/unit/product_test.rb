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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
