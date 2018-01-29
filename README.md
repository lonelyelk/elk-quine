# Quine exercise

Create a quine from scratch with running elk inrton:

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

No specific obfuscation was made to the code. I also tried to keep line length lower 100.