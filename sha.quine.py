import hashlib
import sys
s = """
print(
  getattr(
    hashlib,
    (sys.argv[1:] or ['sha1'])[0]
  )(
    str.encode(
      chr(10).join([
        'import hashlib',
        'import sys',
        f's = {chr(34) * 3}{s}{chr(34) * 3}',
        'eval(s)',
        ''
      ])
    )
  ).hexdigest()
)
"""
eval(s)
