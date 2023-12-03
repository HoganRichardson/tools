# tools
##### A collection of small scripts and programs I've created for various tasks

## ascii_to_hex.py
`ascii_to_hex.py` takes argv[1] and prints it out as 4-byte hexidecimal, padding with ASCII 0's (`\x30`). Useful for passing into shellcode etc.

## reverse_name.sh
`reverse_name.sh` reorders the name of all files in current directory based on a common separator. E.g. "01.01.1984.pdf" becomes "1984.01.01.pdf".
