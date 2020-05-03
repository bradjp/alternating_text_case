def alternating_case(input, first_case='Upper')
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
  if first_case == 'Lower'
    sortables.each do |el|
      el[1].upcase! unless sortables.index(el).even?
    end
  else
    sortables.each do |el|
      el[1].upcase! if sortables.index(el).even?
    end
  end
  result = sortables + irrelevants
  result.sort!
  result.map { |el| el[1] }.join
end


