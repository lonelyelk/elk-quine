e1 = '     ^^..^^ '
e2 = '  _____ U   '
e3 = '~(  _  /    '
e4 = '  || ||     '
e5 = '  ^^ ^^     '
a = <<a
I = [92].pack("U*")
t = e3.sub!('~', '`')
t || e3.sub!('`', '~')
e1 = e1.chars.rotate(t ? -1 : 1).join
e4 = t ? e4.sub('||', '//').gsub('|', I + I) : e4.sub('//', '||').sub(I, '||')
e5 = (e5[0..3].chars.rotate(t ? 1 : -1) + e5[4..-1].chars.rotate(t ? -1 : 1)).join
a
eval(a)
b = 'c = "Q"
puts (c % [e1, e2, e3, e4, e5, a, b]), b.sub("Q", c.gsub(/\n/, I + I + "n"))'
c = "e1 = '%s'\ne2 = '%s'\ne3 = '%s'\ne4 = '%s'\ne5 = '%s'\na = <<a\n%sa\neval(a)\nb = '%s'"
puts (c % [e1, e2, e3, e4, e5, a, b]), b.sub("Q", c.gsub(/\n/, I + I + "n"))
