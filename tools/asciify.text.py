#!/usr/bin/python3
import requests

# ASCIIfy
base = "http://artii.herokuapp.com/"


def printResponse(res):
    if res.status_code == 200:
        ret = res.text
    else:
        ret = f"Error: {res.status_code}: {res.text}"
    print(ret)


def getFonts():
    res = requests.get(base + "fonts_list")
    printResponse(res)


def textToAscii(text, font=None):
    f_text = text.split(" ")
    f_text = "+".join(f_text)

    if font:
        asc_text = f"make?text={f_text}&font={font}"
    else:
        asc_text = f"make?text={f_text}"
    print(base + asc_text)
    res = requests.get(base + asc_text)
    printResponse(res)


# getFonts()   # Print supported fonts list
text = 'Josefsson'
textToAscii(text)
textToAscii(text, 'thin')
