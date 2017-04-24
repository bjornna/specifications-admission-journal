@echo off
set fontdir=\\p-fs01\dips\KIDS\Maler\Asciidoc\fonts
set imagesdir=\\p-fs01\dips\KIDS\Maler\Asciidoc\images
set themesdir=\\p-fs01\dips\KIDS\Maler\Asciidoc\styles
set stylecssrc=\\p-fs01\dips\KIDS\Maler\Asciidoc\styles\dips.css
set coderaysrc=\\p-fs01\dips\KIDS\Maler\Asciidoc\styles\coderay-asciidoctor.css
set stylecss=dips.css
set configdir=\\p-fs01\DIPS\KIDS\Maler\Asciidoc
set contentdir=\\p-fs01\DIPS\KIDS\Maler\Asciidoc\content

set stylesrc=\\p-fs01\DIPS\KIDS\Maler\Asciidoc\styles
set themesname=dips-pdf-styling
set fasrc=\\p-fs01\dips\kids\Maler\Asciidoc\font-awesome-4.4.0\

echo Kopierer css og font-awesome
xcopy /s /i /y %fasrc%css css
xcopy /s /i /y %fontdir% fonts
xcopy /s /i /y %fasrc%fonts fonts
xcopy /i /y /s %stylecssrc% css
xcopy /i /y /s %coderaysrc% css

echo Kopierer styles
xcopy /i /y %stylesrc% styles

echo Kopierer images 
xcopy /i /y %imagesdir% styles



echo Kopierer standardtekster
xcopy /i /y %contentdir% content


rem echo %configdir%
xcopy /i /y  "%configdir%\UTV Mal Konfigurerte pakker" styles