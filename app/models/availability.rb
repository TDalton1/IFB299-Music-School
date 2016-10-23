class Availability < ApplicationRecord
  #This requires validation
  belongs_to :user
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  VALID_DAY_REGEX = /[A-z]+/
  VALID_TIME_REGEX = /\A^([8-9]|0[8-9]|1[0-7]):[0,3][0]/
  VALID_DURATION_REGEX = /\A[0-9]{1}\.?[0-9]*/
  
  validates :user_email,  presence: true, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }
  validates :day, presence: true, length: { maximum: 15 }, format: { with: VALID_DAY_REGEX }
  validates :time, presence: true, length: {maximum: 5}, format: { with: VALID_TIME_REGEX }
  validates :duration, presence: true, length: { maximum: 2 }, format: { with: VALID_DURATION_REGEX }
  
end
