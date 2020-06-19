require 'digest'
eval a = <<-'a'
sha = Digest.const_get(ARGV[0].to_s.upcase) rescue Digest::SHA1
puts sha.hexdigest("require 'digest'\neval a = <<-'a'\n%sa\n" % [a])
a
