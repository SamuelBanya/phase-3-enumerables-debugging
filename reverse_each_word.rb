require "pry"

def reverse_each_word(sentence)
  words = sentence.split()
  reversed_words = []

  words.each do |word|
     # Using the 'shovel' operator, '<<' to append the reversed word to the 'reversed_words' array:
    reversed_words << word.reverse
  end

  reversed_words.join(" ")
end

puts "\nOutput of 'reverse_each_word' function: "
puts reverse_each_word("Hello there, and how are you?")

def refactored_reverse_each_word(sentence)
  words = sentence.split()

  reversed_words = words.map do |word|
    word.reverse
  end

  reversed_words.join(" ")
end

puts "\nOutput of 'refactored_reverse_each_word' function: "
puts refactored_reverse_each_word("Hello sir, how many I help you?")

def proc_shorthand_reverse_each_word(sentence)
  words = sentence.split()

  reversed_words = words.map(&:reverse)

  reversed_words.join(" ")

end

puts "\nOutput of 'proc_shorthand_reverse_each_word' function: "
puts proc_shorthand_reverse_each_word("Yes mam, the lobby is over there")

def chained_reverse_each_word(sentence)
  sentence.split.map(&:reverse).join(" ")
end

puts "\nOutput of 'chained_reverse_each_word' function: "
puts chained_reverse_each_word("Yep, the weather outside is frightful!")
