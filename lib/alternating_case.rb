def alternating_case(input)
  alternated_input = []
  input.split('').each_with_index do |letter, index|
    alternated_input << [letter, index]
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
  print sortables
  puts "\n"
  puts '-----------'
  print irrelevants
end


 # if index.even? 
    #   alternated_input << letter.upcase
    # else
    #   alternated_input << letter.downcase
    # end