# asciidecode/encode
Encode and Decode an ascii list of int into ascii

## Examples

### asciiencode
Encodes a string into a list of ascii int's
```
$ asciiencode.sh "Hello World"
72,101,108,108,111,32,87,111,114,108,100
```

### asciidecode
Decodes a list of ascii int's into a string
```
$ asciidecode.sh 72,101,108,108,111,32,87,111,114,108,100
Hello World
```

### asciiencodefile
Strips newlines and tabs from the file, optimised for compressing source code
```
$ cat sample.txt
Hello World
    Second Line of text
$ ./asciiencodefile.sh < sample.txt 
72,101,108,108,111,32,87,111,114,108,100,83,101,99,111,110,100,32,76,105,110,101,32,111,102,32,116,101,120,116
$ asciidecode 72,101,108,108,111,32,87,111,114,108,100,83,101,99,111,110,100,32,76,105,110,101,32,111,102,32,116,101,120,116
Hello WorldSecond Line of text
```
