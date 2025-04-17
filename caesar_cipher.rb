def caesar_cipher(word, key)
  ciphered_word = ""

  word.each_char do |char|
    ciphered_letter = char

    if char != " "
      for i in 1..key do
        ciphered_letter.succ!
      end
    
      if ciphered_letter.length > 1
        ciphered_letter = ciphered_letter[1]
      end
    end
    ciphered_word.concat(ciphered_letter)
  end

  ciphered_word
end

word = caesar_cipher("What a string!", 5)
puts word