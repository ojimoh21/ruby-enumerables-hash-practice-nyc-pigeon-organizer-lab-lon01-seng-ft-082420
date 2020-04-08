require "pry"

def nyc_pigeon_organizer(data)
pigeon_data = {}

data.each do |attribute_keys, attribute_values|
  attribute_values.each do |properties, names|
    names.each do |name|
      if !pigeon_data[name]
        pigeon_data[name] = {}
        #if it is not true create it
        end 
        
      if !pigeon_data[name][attribute_keys]
        pigeon_data[name][attribute_keys] = []
        #if its not true, create it
          end 
          binding.pry
          pigeon_data[name][attribute_keys] << properties.to_s 
          #conert to string as they are symbols
      end 
    end 
  end 
  pigeon_data
end