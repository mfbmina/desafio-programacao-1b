class DataFile < ApplicationRecord
  mount_uploader :file, DataFileUploader

  has_many :inputs

  validates :file, presence: true

  enum status: { success: 0, error: 1 }
end
