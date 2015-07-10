# palindromes
This tool takes in an text file as input and outputs palindromes and histogram

### Requirements
- ImageMagic `OSX: brew install imagemagick`
- Ruby (tested on 2.1.2p95)

### Installation
```bash
# Gem Installation
$ gem install palindromes

- OR -

# Bundle Installation
$ bundle install
$ alias palindromes="bundle exec ./bin/palindromes"
```


### Usage
```bash

# Usage Help
$ palindromes --help

# default search (output to stdout and chart to ./histogram.png)
$ palindromes find <input_file>

# to redirect output(file and chart)
# palindromes find -o <output_file> -c <output_chart_file> <input_file>
$ palindromes find -o /tmp/output.txt -c /tmp/histogram.png /tmp/input.txt



# default run example/output
$ palindromes find sample/input.txt
-- palindromes --
b > 11
a > 10
aaa > 9
c > 4
radar > 4
101 > 3
i > 3
lol > 3
aaaa > 2
d > 2
mom > 2
s > 2
aa > 1
bbbb > 1
beeb > 1
ddd > 1
did > 1
e > 1
f > 1
g > 1
h > 1
j > 1
k > 1
l > 1
m > 1
n > 1
o > 1
p > 1
peep > 1
q > 1
r > 1
t > 1
u > 1
v > 1
w > 1
x > 1
y > 1
z > 1
-- histogram --
{"a"=>10, "radar"=>4, "did"=>1, "peep"=>1, "mom"=>2, "s"=>2, "i"=>3, "beeb"=>1, "101"=>3, "b"=>11, "c"=>4, "lol"=>3, "aaa"=>9, "v"=>1, "w"=>1, "x"=>1, "y"=>1, "z"=>1, "t"=>1, "u"=>1, "o"=>1, "p"=>1, "q"=>1, "r"=>1, "k"=>1, "l"=>1, "m"=>1, "n"=>1, "g"=>1, "h"=>1, "j"=>1, "d"=>2, "e"=>1, "f"=>1, "aa"=>1, "aaaa"=>2, "bbbb"=>1, "ddd"=>1}

-- histogram chart --
generating chart... histogram.png
```
