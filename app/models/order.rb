# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :text
#  email      :string(255)
#  pay_type   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type

  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase Order", "Google Checkout"]

  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
end
