FactoryGirl.define do
  factory :data_file do
    file { Rack::Test::UploadedFile.new(File.join(Rails.root, 'dados.txt')) }
  end

  factory :data_file_failure, class: DataFile do
    file { Rack::Test::UploadedFile.new(File.join(Rails.root, 'aaaa.txt')) }
  end
end
