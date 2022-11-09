MORSE_HASH = {
  '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f',
  '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l',
  '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r',
  '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w',
  '-..-' => 'x', '-.--' => 'y', '--..' => 'z', '   ' => ' '
}.freeze

def character_decoder(char)
  MORSE_HASH[char].upcase
end

def word_decoder(word)
  result = ''
  word.split.each { |character| result += character_decoder(character) }
  result
end

def sentence_decoder(string)
  result = ''
  string.split('   ').each { |word| result += "#{word_decoder(word)} " }
  result
end

puts sentence_decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

puts sentence_decoder('-- -.--   -. .- -- .')
