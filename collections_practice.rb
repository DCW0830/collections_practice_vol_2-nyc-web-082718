require"pry"
def begins_with_r(array)
  array.all? do |x|
     x.start_with?('r')
  end
end

def contain_a(array)
  array.select do |x|
    x.include?('a')
  end
end

def first_wa(array)
  array.find {|x| x.to_s.start_with?('wa')}
end

def remove_non_strings(array)
  array.select {|x| x.is_a?(String)}
end

def count_elements(array)
  final_array = []
  array.each do |orignal_hsh|
    orignal_hsh[:count] = 0
    name = orignal_hsh[:name]
    array.each do |hsh|
      if hsh[:name] == name
        orignal_hsh[:count] += 1
        final_array << hsh
      end
    end
  end
  final_array.uniq
end

def merge_data(first_names, person_data)
  first_names.flat_map do |name|
    person_data.map do |person_info|
      key = name[:first_name]
      person = person_info[key]
      name.merge(person)
    end
  end
end

def find_cool(array)
  array.select { |element| element[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
