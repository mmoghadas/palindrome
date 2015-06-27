# palindrome
This tool takes in an text file as input and outputs palindromes and histogram

### Requirements
- ImageMagic `OSX: brew install imagemagick`
- Ruby (tested on 2.1.2p95)
- gruff gem `gem install gruff`


### Usage
```bash
$ ruby palindromes.rb input.txt

# output

-- palindromes --
b > 4
a > 3
radar > 3
A > 1
Beeb > 1
c > 1
did > 1
I > 1
Mom > 1
peep > 1
s > 1

-- histogram --
{"A"=>1, "radar"=>3, "did"=>1, "peep"=>1, "a"=>3, "Mom"=>1, "s"=>1, "I"=>1, "Beeb"=>1, "b"=>4, "c"=>1}

-- histogram chart --
generating chart... ./histogram.png
```
