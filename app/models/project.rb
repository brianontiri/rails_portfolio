class Project < ApplicationRecord
  has_many :ratings, dependent: :destroy 

end
