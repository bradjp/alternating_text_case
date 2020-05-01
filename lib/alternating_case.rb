def alternating_case(input)
  alternated_input = []
  input.split('').each_with_index do |char, index|
    alternated_input << [char.downcase, index]
  end
  sortables =[]
  irrelevants =[]
  alternated_input.each do |el|
    if el[0].match(/[a-zA-Z]/)
      sortables << el
    else
      irrelevants << el
    end
  end
  sortables.each do |el|
    el[0].upcase! if el[1].even?
  end
  alternated_input
end


