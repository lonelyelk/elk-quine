const s = `
const crypto = r('node:crypto')
const n = unescape('%0a')
const q = unescape('%60')
const val =  'const s = ' + q + s + q + n + 'Function("s", "r", s)(s, require)' + n
const shasum = crypto.createHash(process.argv[2] || 'sha1')
shasum.update(val)
console.log(shasum.digest('hex'))
`
Function("s", "r", s)(s, require)
