# Quine exercise

This was started as an excercise. I wanted to create a quine from scratch with running elk inrton:

```
      ^^..^^           ^^..^^ 
   _____ U         _____ U    
 ~(  _  /    =>  `(  _  /     
   || ||           // \\      
   ^^ ^^          ^^   ^^     
```

Saved evolution to see how I was figuring stuff out. I had no prevoius experiance in creating
quines. Showing the evolution of my thought, history goes:

```
quine.alpha.rb => quine.beta.rb => quine.rb
```

It is very interesting to observe how figuring stuff out happened.
You can run and observe running elk with:

```
$ ruby runner.rb
```

## Bonus

There is an animated version of this quine. If you run it with no args (or through a runner) it
is just a regular quine. But if you provide number of frames and pause in seconds between frames,
the elk will go right and return back the specified number of frames:

```
$ ruby quine.anim.rb 30 0.2
```

No specific obfuscation was made to the code. I also tried to keep line length below 100.

## Other

Based on the same technic the quine derivative `sha.quine.rb` outputs it's own sha checksum
using provided algorythm. Defaults to _sha1_. To examine:

```
$ ruby sha.quine.rb
$ sha1sum sha.quine.rb

$ ruby sha.quine.rb sha512
$ sha512sum sha.quine.rb

... etc
```

To verify:

```
$ ruby sha.quine.rb md5 > md5r.txt
$ md5sum sha.quine.rb > md5.txt
$ diff md5.txt md5r.txt
```

## Inspiration

As I was discovering new interesting new posibilities I went further. Greatly inspired by
[Yusuke Endoh](https://www.youtube.com/user/mametter) I have created an animated ASCII-art quine

```
$ ruby quine.ascii.anim.rb
```

You can see that it can generate itself from a draft non-ascii version.