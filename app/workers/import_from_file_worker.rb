class ImportFromFileWorker
  include Sidekiq::Worker

  def perform(id)
    begin
      data = DataFile.find(id)
      File.open(data.file.current_path, 'r').each_with_index do |line, i|
        next if i == 0
        attrib_array = line.split("\t")
        data.inputs.create(array_to_hash(attrib_array))
      end
      data.update_attribute(:status, 'success')
    rescue StandardError => e
      data.update_attribute(:status, 'error')
    end
  end

  private

  def array_to_hash(array)
    {
      buyer: array[0],
      description: array[1],
      unitary_price: array[2].to_f,
      amount: array[3],
      address: array[4],
      provider: array[5]
    }
  end
end
