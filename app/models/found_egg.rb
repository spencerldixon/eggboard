class FoundEgg < ActiveRecord::Base
  validates :name, presence: true
end
