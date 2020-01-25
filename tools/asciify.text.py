#!/usr/bin/python3
import requests

# ASCIIfy
base = "http://artii.herokuapp.com/"


def getResponse(res):
    if res.status_code == 200:
        ret = res.text
    else:
        ret = f"Error: {res.status_code}: {res.text}"
    return ret


def sampleAllFonts(show=False):
    if show:
        res = requests.get(base + "fonts_list")
        resStr = getResponse(res)
        fonts = resStr.split("\n")

        for font in fonts:
            textToAscii('Sample text', font)


def textToAscii(text, font=None):
    f_text = text.split(" ")
    f_text = "+".join(f_text)

    if font:
        asc_text = f"make?text={f_text}&font={font}"
    else:
        asc_text = f"make?text={f_text}"
    print('\n\n %s' % (base + asc_text))
    res = requests.get(base + asc_text)
    print(getResponse(res))


sampleAllFonts()
text = 'Josefsson'
textToAscii(text)
