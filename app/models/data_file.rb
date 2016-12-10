class DataFile < ApplicationRecord
  mount_uploader :file, DataFileUploader

  enum status: { success: 0, error: 1 }
end
