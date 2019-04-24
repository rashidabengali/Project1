# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :text
#  email           :text
#  image           :text
#  dob             :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#  admin           :boolean
#

class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :likes, dependent: :destroy
  validates :email, :presence => true, :uniqueness => true
end
