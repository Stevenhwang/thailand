class Travel < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  validates :date, presence: true
  validates :departure, presence: true
  validates :destination, presence: true
  validates :introduction, presence: true
  validates :notice, presence: true
  validates :instruction, presence: true
end
