# == Schema Information
#
# Table name: reviews
#
#  id            :bigint(8)        not null, primary key
#  rating        :integer
#  comment       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :integer
#  user_id       :integer
#

class Review < ApplicationRecord
  belongs_to :restaurant, :optional => 'true'
  belongs_to :user, :optional => 'true'

end
