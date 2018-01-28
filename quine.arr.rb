e = [
  '     ^^..^^ ',
  '  _____ U   ',
  '~(  _  /    ',
  '  || ||     ',
  '  ^^ ^^     ',
]
a = <<-'a'
I, t = [[92].pack("U*"), e[2].sub!("~", "`")]
t && e[3].sub!(/([^ ]{2} ){2}/, "// #{I * 4} ") ||
  e[2].sub!("`", "~") && e[3].sub!(/[^ ]{2} [^ ]/, (["|" * 2] * 2).join(" "))
e[0] = e[0].chars.rotate(t ? -1 : 1).join
e[4] = (e[4][0..3].chars.rotate(t ? 1 : -1) + e[4][4..-1].chars.rotate(t ? -1 : 1)).join
c = "e = [\n  '%s',\n]\na = <<-'a'\n%sa"
puts(c % [e.join("',\n  '"), a], "eval(a)")
a
eval(a)
