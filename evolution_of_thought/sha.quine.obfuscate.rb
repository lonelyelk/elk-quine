eval s = <<-'RUBY'
require 'digest'
->(d, n) {
  $> << [d.hexdigest("eval s = <<-'RUBY'#{n}#{s}RUBY#{n}"), $0] * '  ' << n
}[(Digest.const_get($*.first.upcase) rescue Digest::SHA1), 10.chr]
RUBY
