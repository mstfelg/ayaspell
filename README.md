# AyaSpell
Arabic spelling dictionary for Hunspell.

Ayaspell is the Arabic dictionary for many free applications, including
OpenOffice, Firefox, Thunderbird, abiword, gedit and many more.

Goals:
- Spell dictionary: hunspell-ar, based on hunspell.
- Thesaurus dictionary: thesaurus-ar , based on MyThes, and sinonimi.
- morphological lexicon: grammar-ar , for the grammar-checker

## Installation

The source files are data folder as text files in Hunspell format (see: `man 5 hunspell`).
```
make
```
To build a specific format you can 
* zip:
```
make zip
```
* LibreOffice/OpenOffice:
```
make libreoffice
```
* Mozilla Firefox/Thunderbird:
```
make mozilla
```

The resulted files can be found in releases folder.



### Enable for OpenOffice

Replace EG with locale.

```
cp ar.dic ar.aff /usr/share/myspell/dicts/
echo DICT ar "$LOCALE" >> /etc/openoffice/dictionary.lst
```

On windows: change paths to

```
C:\Program Files\OpenOffice.org 2.1\share\dict\ooo
C:\Program Files\OpenOffice.org 2.1\share\dict\ooodictionary.lst
```

## Acknowledgement
Many thanks to the following contributors and supporters:
* Ali Jabir Al-ali
* Essalim Essabah
* khaled Hosny
* Mohamed Samir
* Taha Munzir
* Taha Zerrouki
* Zayed Alsaidi
* Mohamed Kebdani
