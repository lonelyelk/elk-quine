e = [
  '     ^^..^^ ',
  '  _____ U   ',
  '~(  _  /    ',
  '  || ||     ',
  '  ^^ ^^     ',
]
eval a = <<-'a'
I, r, n, w = [92.chr, ->(l, t) { l.chars.rotate(t ? -1 : 1) * '' }, ARGV[0].to_i, ARGV[1].to_f]
(n * 2).times do |i|
  b, p = i < n ? ['`', 3] : ['′', 6]
  t, s = [e[2].tr!('~', b), ' ' + ' ' * (n - (i - n).abs)]
  t && e[3].sub!(/([^ ]+ )+/, "// #{I * 4} ") ||
    e[2].tr!(b, '~') && e[3].gsub!(/[^ ]+/, '||')
  e[0], e[4] = [r[e[0], i < n ? t : !t], r[e[4][0..p], !t] + r[e[4][(p + 1)..-1], t]]
  es = "e = [\n%s'%s', \n]" % [s, e * "', \n#{s}'"]
  puts "#{es}\e[#{e.size + 2}A"
  sleep w
  if [n - 1, n * 2 - 1].include?(i)
    e.map(&:reverse!) 
    e[2].tr!('(', ')') && e[2].tr!('/', I) || e[2].tr!(I, '/') && e[2].tr!(')', '(')
  end
end
puts "e = [\n  '%s',\n]\neval a = <<-'a'\n%sa" % [e * "',\n  '", a]
a
