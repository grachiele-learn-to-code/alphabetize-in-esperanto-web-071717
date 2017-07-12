def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars

  alpha_hash = {}

  alphabet.each_with_index do |letter, idx|
    alpha_hash[letter] = idx
  end

  new_arr = arr.sort_by do |item|
    item.chars.map { |letter| alpha_hash[letter]}
  end

  new_arr
end
