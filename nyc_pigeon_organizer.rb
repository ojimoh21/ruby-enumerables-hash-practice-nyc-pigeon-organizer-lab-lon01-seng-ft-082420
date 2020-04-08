require "pry"

def nyc_pigeon_organizer(data)
pigeon_data = {}

data.each do |attributes_key, attribute_values_array|
  attribute_values_array.each do |properties, names|
    
    names.each do |name|
      if !pigeon_data[name] 
        pigeon_data[name] = {}
      end 
      
      if !pigeon_data[name][attributes_key]
        pigeon_data[name][attributes_key] = []
      end 
        pigeon_data[name][attributes_key] << properties.to_s
        binding.pry
      end 
    end
  end 
  pigeon_data
end