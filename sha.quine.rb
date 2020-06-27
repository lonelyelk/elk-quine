eval a = <<-'a'
require 'digest'
sha = Digest.const_get(ARGV[0].to_s.upcase) rescue Digest::SHA1
puts sha.hexdigest("eval a = <<-'a'\n%sa\n" % [a])
a
