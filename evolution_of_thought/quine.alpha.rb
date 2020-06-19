p = 'puts %q[q = %q[Q];[ i, a, "puts #{q}", "puts %Q(a = <<a\n#{a}a)", p + ".sub(/Q/, %q[#{q}]).sub(/;/, %Q(\n))" ].each { |s| eval s }]'
e1 = '     ^^..^^ '
e2 = '  _____ U   '
e3 = '~(  _  /    '
e4 = '  || ||     '
e5 = '  ^^ ^^     '
i = 'I = [92].pack("U*")'
a = <<a
e1 = e1 =~ / $/ ? e1.chars.rotate(-1).join : e1.chars.rotate(1).join
e3.sub!('~', '`') || e3.sub!('`', '~')
e4 = e4.include?('|') ? e4.sub('||', '//').gsub('|', I + I) : e4.sub('//', '||').sub(I, '||')
e5 = e5 =~ /^ {2}/ ? [e5[1, 3], '   ', e5[5, 6]].join : [' ', e5[0, 3], e5[5..-1], ' '].join
a
q = %q["p = '#{p}'\ne1 = '#{e1}'\ne2 = '#{e2}'\ne3 = '#{e3}'\ne4 = '#{e4}'\ne5 = '#{e5}'\ni = '#{i}'"]
[ i, a, "puts #{q}", "puts %Q(a = <<a\n#{a}a)", p + ".sub(/Q/, %q[#{q}]).sub(/;/, %Q(\n))" ].each { |s| eval s }
