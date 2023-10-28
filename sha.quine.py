import hashlib
import sys
s = """
print(getattr(hashlib, (sys.argv[1:] or ['sha1'])[0])(str.encode(f'import hashlib{chr(10)}import sys{chr(10)}s = {chr(34) * 3}{s}{chr(34) * 3}{chr(10)}eval(s){chr(10)}')).hexdigest())
"""
eval(s)
