require_relative '../spec_helper'

require 'minimal_stemmer/core_ext/string'

describe String do
  describe '#stem' do
    it 'adds a #stem method to String that calls MinimalStemmer.stem' do
      expect('words'.stem).to eq('word')
    end
  end
end
