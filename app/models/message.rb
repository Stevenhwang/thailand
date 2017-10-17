class Message < ApplicationRecord
  validates :email, presence: true
  validates :text, presence: true
end
