eval s = <<-'RUBY'
require 'digest'
sha = Digest.const_get($*[0].upcase) rescue Digest::SHA1
puts sha.hexdigest("eval s = <<-'RUBY'\n#{s}RUBY\n")
RUBY
