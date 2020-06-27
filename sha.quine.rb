eval s = <<-'RUBY'
require 'digest'
sha = Digest.const_get(ARGV[0].to_s.upcase) rescue Digest::SHA1
puts sha.hexdigest("eval s = <<-'RUBY'\n#{s}RUBY\n") + '  ' + $0
RUBY
