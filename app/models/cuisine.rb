# == Schema Information
#
# Table name: cuisines
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cuisine < ApplicationRecord
  has_many :restaurants
end
