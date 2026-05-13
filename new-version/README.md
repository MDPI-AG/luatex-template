# New accessible MDPI LaTeX Class

This folder contains the development code for the new class.

* The code of the new class is mdpi-luatex.dtx
* mdpi_apacite.sty will need updates too once tagging is activated 
* mdpi-pdftex.cls is an adapted copy of the old class, it is loaded if lualatex is not used. 
* The support folder contains logo files and the original `.bst` files. These files should not be changed.  

To ease development references to the folder `Definitions/` has been removed from the old and new class and from the template. 

## Installation 

Run in the `new-version` folder 
~~~
l3build install
~~~

This will unpack the dtx and install all needed files in TEXMFHOME. 

## Documentation

Documentation files are mdpi-luatex.dtx and all files in the `doc` folder starting with `template`.

Run 
~~~
l3build doc
~~~
to compile all or 
~~~
l3build doc template-XXX
~~~
to compile only `template-XXX.tex`.

The compilation is done with lualatex-dev.

## Tests

Tests are in the testfiles folder. Note that `\input{regression-test}` must be before 
`\documentclass{mdpi-luatex}` as `microtype` defines `\pdfoutput` for lualatex and so confuses the code.

Tests are done with lualatex-dev only currently. 
