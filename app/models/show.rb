class Show < ApplicationRecord
  validates :title, presence: true
  validates :excerpt, presence: true
  validates :text, presence: true

  mount_uploaders :images, ImageUploader
  serialize :images, JSON
end
