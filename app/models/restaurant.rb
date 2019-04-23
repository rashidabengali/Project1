# == Schema Information
#
# Table name: restaurants
#
#  id           :bigint(8)        not null, primary key
#  name         :text
#  location     :text
#  image        :text
#  specialities :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  cuisine_id   :integer
#

class Restaurant < ApplicationRecord
  belongs_to :cuisine, :optional => 'true'
  has_many :reviews
end
