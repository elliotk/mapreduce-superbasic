# Readme

This tiny repo contains two super basic map reduce scripts, written in Ruby.

## Usage

```bash
$ ./mapper.rb < baskervilles.txt | sort | ./reducer.rb | sort -n | tail -n 100
```

Alternatively, you can do,

```bash
$ cat *.txt | ./mapper.rb | sort | ./reducer.rb | sort -n | tail -n 100
```

I know. Its super basic. But it works! 

## Other

Line 5 in file reducer.rb, the following line is used to filter out infrequently
used words,

```ruby
    puts "#{total}\t#{previous_key}" if total > 1000
```

Adjust the total as necessary. For example, if you wish to test these scripts using
the file input.txt, change line 5 above to somthing like,

```ruby
    puts "#{total}\t#{previous_key}" if total > 1
```

## Conclusion

Have fun!
