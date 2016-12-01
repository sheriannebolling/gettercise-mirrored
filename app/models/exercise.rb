class Exercise < ActiveRecord::Base
  # Remember to create a migration!
  validates :description, presence: true
  validates :date, presence: true

  belongs_to :user
end
