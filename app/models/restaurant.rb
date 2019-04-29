# == Schema Information
#
# Table name: restaurants
#
#  id            :bigint(8)        not null, primary key
#  name          :text
#  location      :text
#  specialities  :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  cuisine_id    :integer
#  images        :text             default([]), is an Array
#  contact       :integer
#  phone         :integer
#  opening_hours :time
#  closing_hours :time
#

class Restaurant < ApplicationRecord
  belongs_to :cuisine, :optional => 'true'
  has_many :reviews
  has_many :likes, dependent: :destroy

  def average_rating
    reviews.pluck(:rating).sum.to_f / reviews.count
  end
end
