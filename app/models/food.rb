class Food < ApplicationRecord
  validates :title, presence: true
  validates :excerpt, presence: true
  validates :text, presence: true
end
