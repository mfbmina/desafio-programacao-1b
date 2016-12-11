class DataFile < ApplicationRecord
  mount_uploader :file, DataFileUploader

  has_many :inputs

  validates :file, presence: true

  enum status: { processing: 0, success: 1, error: 2 }
end
