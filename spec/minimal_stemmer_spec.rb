require_relative './spec_helper'

describe MinimalStemmer do
  describe '.stem' do
    context 'word ending in "ies"' do
      it 'stems to a "y"' do
        expect(MinimalStemmer.stem('tries')).to eq('try')
      end

      context 'ending in "eies"' do
        it 'does not stem' do
          expect(MinimalStemmer.stem('neies')).to eq('neies')
        end
      end

      context 'ending in "aies"' do
        it 'does not stem' do
          expect(MinimalStemmer.stem('braies')).to eq('braies')
        end
      end
    end

    context 'word ending in "es"' do
      it 'stems to a "e"' do
        expect(MinimalStemmer.stem('cliques')).to eq('clique')
      end

      context 'ending in "aes"' do
        it 'does not stem' do
          expect(MinimalStemmer.stem('sundaes')).to eq('sundaes')
        end
      end

      context 'ending in "ees"' do
        it 'does not stem' do
          expect(MinimalStemmer.stem('trustees')).to eq('trustees')
        end
      end

      context 'ending in "oes"' do
        it 'does not stem' do
          expect(MinimalStemmer.stem('potatoes')).to eq('potatoes')
        end
      end
    end

    context 'word ending in s' do
      it 'strips the s' do
        expect(MinimalStemmer.stem('words')).to eq('word')
      end

      context 'ending in "us"' do
        it 'does not stem' do
          expect(MinimalStemmer.stem('focus')).to eq('focus')
        end
      end

      context 'ending in "ss"' do
        it 'does not stem' do
          expect(MinimalStemmer.stem('success')).to eq('success')
        end
      end
    end

    context 'ignored suffixes' do
      it 'does not stem "ing"' do
        expect(MinimalStemmer.stem('running')).to eq('running')
      end

      it 'does not stem "ly"' do
        expect(MinimalStemmer.stem('surprisingly')).to eq('surprisingly')
      end

      it 'does not stem "er"' do
        expect(MinimalStemmer.stem('runner')).to eq('runner')
      end

      it 'does not stem "ed"' do
        expect(MinimalStemmer.stem('planned')).to eq('planned')
      end
    end
  end
end
