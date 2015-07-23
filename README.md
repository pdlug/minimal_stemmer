# Ruby Minimal Stemmer Implementation

Implements the "S-Stemmer" from
[How Effective Is Suffixing?](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.104.9828&rank=1)
Donna Harman. Just like Lucene's EnglishMinimalStemmer.

## Installation

```sh
gem install minimal_stemmer
```

## Usage

```ruby
require 'minimal_stemmer'

MinimalStemmer.stem('words')
# => 'word'
```

It's also possible to include it so it adds a `#stem` method to the core ruby
string method. For safety, this must be included explicitly:

```ruby
require 'minimal_stemmer/core_ext/string'

'words'.stem
# => 'word'
```
