class Task < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :content, presence: true

end
