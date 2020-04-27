def alternating_case(input)
  alternated_input = []
  input.split('').each_with_index do |letter, index|
    if index.even? 
      alternated_input << letter
    else
      alternated_input << letter.downcase
    end
  end
  alternated_input.join
end