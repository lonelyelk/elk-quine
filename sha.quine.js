const crypto = require("node:crypto")
const s = `
const n = unescape('%0a')
const val = 'const crypto = require("node:crypto")' + n + 'const s = ' + q + s + q + n + 'Function("q", "s", "c", s)("' + q + '", s, crypto)' + n
const shasum = c.createHash('sha1')
shasum.update(val)
console.log(shasum.digest('hex'))
`
Function("q", "s", "c", s)("`", s, crypto)
