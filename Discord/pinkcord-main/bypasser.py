import codecs 
import base64

def encode_file(filename):
    with open(filename, 'r') as f:
        kod = f.read()

    kod = kod.encode('utf-8')
    kod = base64.b64encode(kod)
    kod = kod.decode('utf-8')
    kod = codecs.decode(kod, 'rot13')

    with open(filename, 'w') as f:
        f.write(kod)

    print("[*] encoded")

encode_file("to_bypass.txt")
