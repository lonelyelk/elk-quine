# Quine exercise

This was started as an exercise. I wanted to create a quine from scratch with running elk inrton:

```
      ^^..^^           ^^..^^ 
   _____ U         _____ U    
 ~(  _  /    =>  `(  _  /     
   || ||           // \\      
   ^^ ^^          ^^   ^^     
```

Saved evolution to see how I was figuring stuff out. I had no previous experience in creating
quines. Showing the evolution of my thought, history goes:

```text
quine.alpha.rb => quine.beta.rb => quine.rb
```

It is very interesting to observe how figuring stuff out happened.
You can run and observe running elk with:

```shell
ruby runner.rb
```

## Bonus

There is an animated version of this quine. If you run it with no args (or through a runner) it
is just a regular quine. But if you provide number of frames and pause in seconds between frames,
the elk will go right and return back the specified number of frames:

```shell
ruby quine.anim.rb 30 0.2
```

No specific obfuscation was made to the code. I also tried to keep line length below 100.

## Other

Based on the same technic the quine derivative `sha.quine.*` outputs it's own sha checksum
using provided algorithm. Defaults to _sha1_. To examine:

```shell
ruby sha.quine.rb
sha1sum sha.quine.rb

ruby sha.quine.rb sha512
sha512sum sha.quine.rb

node sha.quine.js sha224
sha224sum sha.quine.js

node sha.quine.py sha256
sha256sum sha.quine.py

# ... etc
```

## Palindrome Quine

With ruby it is sufficient to write just one half and it will work like a generator. Running:

```shell
ruby palindrome-quine-generator.rb
```
and
```shell
ruby palindrome-quine.rb
```
yields the same output which is `palindrome-quine.rb` contents.

Reverting it:

```ruby
File.write('palindrome-quine-reversed.rb', File.read('palindrome-quine.rb').chars.reverse.join)
```

Creates the file identical to the `palindrome-quine.rb`.

## Inspiration

As I was discovering new interesting new possibilities I went further. Greatly inspired by
[Yusuke Endoh](https://www.youtube.com/user/mametter) I have created an animated ASCII-art quine

```shell
ruby quine.ascii.anim.rb
```

You can see that it can generate itself from a draft non-ascii version.