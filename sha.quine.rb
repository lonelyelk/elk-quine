eval a = <<-'RUBY'
require 'digest'
sha = Digest.const_get(ARGV[0].to_s.upcase) rescue Digest::SHA1
puts sha.hexdigest("eval a = <<-'%<r>s'\n%<a>s%<r>s\n" % { r: 'RUBY', a: a })
RUBY
