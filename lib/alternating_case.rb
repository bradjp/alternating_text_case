def alternating_case(input)
  alternated_input = []
  input.split('').each_with_index do |char, index|
    alternated_input << [index, char.downcase]
  end
  sortables =[]
  irrelevants =[]
  alternated_input.each do |el|
    if el[1].match(/[a-zA-Z]/)
      sortables << el
    else
      irrelevants << el
    end
  end
  sortables.each do |el|
    el[1].upcase! if sortables.index(el).even?
  end
  result = sortables + irrelevants
  result.sort
end


