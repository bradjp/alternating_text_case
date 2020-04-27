def alternating_case(input)
  alternated_input = []
  input.split('').each_with_index do |letter, index|
    if index.even? 
      x << letter
    else
      x << letter.downcase
    end
  end
  alternated_input.join
end