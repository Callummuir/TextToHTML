# TextToHTML
Written in Ruby. Converts a text markup to the HTML format I use in blog posts. 

Markup language.
The following are the rules for the markup lanague that the parser can turn into HTML for my website.

Headers:
The first line by default is the title, and requires no additional tags. Further sub headers need to be tagged as such. See below for tags.

Writing 
Standard writing in paragraphs needs no alterations. Currently bold and italics are not supported. 

Links
You can add links with a specific tag. This allows you to specify the link text and link desitination.

Code
I use Google Code Prettify (https://github.com/google/code-prettify) to display any code.

There are two types of code tag, one if for HTML and is listed as a HTML tag. The rest is for any other code.

If you are using this with Latex I would use the HTML tag, but I haven't tested it. Additionally I am looking at using only one tag. 

Images
You can add an image with the tag listed below. 

Extra added stuff
My site runs on bootstrap, at the start and end of the content there is padding at the side (I am thinking of using this space to hold content, therefore need to be different for each post). Additionally there is a break line at the end of each post. 


Tags
The tages use the '<' and '>' to identify the start and end of the tag. The type of tag is identified by the =" " tag. 


Sub header Tag: 
This is for any sub headings.
="h" identifies this as a header.

`<heading content ="h">`


Link Tag: 
This is for any links.
="link" identifies this as a link.

`<link text *link destination* ="link">`


HTML Tag: 
This is for any HTML code (also probably .tex and .md).
="HTMLSnippet" identifies this as a HTML code snippet.

`< Your HTML code ="HTMLSnippet">`

Code Tag: 
This is for any non-markup code.
="codeSnippet" identifies this as a code snippet.

`< Your code ="codeSnippet">`

Image Tag:
This is for any images.
="img" indentifies this as an image.

`<image text *image location* ="img"`