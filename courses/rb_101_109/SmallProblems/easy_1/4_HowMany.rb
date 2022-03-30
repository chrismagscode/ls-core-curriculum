def count_occurrences(vehicles)
  # create empty dictionary
  occurences = {}
  # for each unique element, find no. of occurences, 
  # create key-value pair of unique element-no.of occurences, 
  # add to occurences dictionary
  vehicles.uniq.each do |element|
    occurences[element] = vehicles.count(element) 
  end

  # print each element alongside the number of occurences
  occurences.each do |vehicle, occurrence|
    Kernel.puts("#{vehicle} => #{occurrence}")
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)