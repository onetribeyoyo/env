<html><head><title>striptags2.sed</title></head>
<body><pre>
#!/bin/sed -nf
#&lt; strip HTML tags from input and remove blank lines

: loop
/&lt;.*&gt;/ {
         #if we have a HTML tag, remove it
         s/&lt;[^&lt;&gt;]*&gt;//g
  
         #branch if a successful substitution was made
         t loop
}
/&lt;/ {
         #if just an opening tag is found, append the
         #next line of input into the pattern space
         N
         b loop
}

# remove blank lines
/^[ 	]*$/d

# print the rest!
p
</pre></body></html>
