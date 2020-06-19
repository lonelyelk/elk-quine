require 'digest'
sha = Digest.const_get(ARGV[0].to_s.upcase) rescue Digest::SHA1
arr = [
  "require 'digest'",
  "sha = Digest.const_get(ARGV[0].to_s.upcase) rescue Digest::SHA1",
  "arr = [",
  "]",
  "puts sha.hexdigest(",
  "  [arr[0,3], arr.map { |l| '  ' + l.inspect + ',' }, arr[3..-1], ''].flatten.join(10.chr),",
  ")",
]
puts sha.hexdigest(
  [arr[0,3], arr.map { |l| '  ' + l.inspect + ',' }, arr[3..-1], ''].flatten.join(10.chr),
)
