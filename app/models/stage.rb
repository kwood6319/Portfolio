class Stage < ApplicationRecord
  belongs_to :project
  validates :title, inclusion: { in: %w[Design Schema Wireframing Development Testing Future\ Changes] }
end
