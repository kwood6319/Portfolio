class Project < ApplicationRecord
  has_many :stages
  extend Mobility

  translates :title, :role, type: :string
  translates :description, type: :text
end
