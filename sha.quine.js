const crypto = require("node:crypto")
const s = `
const val = 'const crypto = require("node:crypto")' + unescape('%0a') + 'const s = ' + q + s + q + unescape('%0a') + 'Function("q", "s", "c", s)("' + q + '", s, crypto)' + unescape('%0a')
const shasum = c.createHash('sha1')
shasum.update(val)
console.log(shasum.digest('hex'))
`
Function("q", "s", "c", s)("`", s, crypto)
