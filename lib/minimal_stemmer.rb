# Simple implementation of the "S-Stemmer" (aka English minimal stemmer).
class MinimalStemmer
  class << self
    # Stem a word.
    #
    # @param [String] word the word to stem
    # @return [String] the stemmed word
    def stem(word)
      if %w[aies eies aes ees oes ss us].any? { |s| word.end_with?(s) }
        return word
      end

      word.sub(/ies\z/, 'y')
        .sub(/es\z/, 'e')
        .sub(/s\z/, '')
    end
  end
end
