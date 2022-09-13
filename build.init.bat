@echo off
set fontdir=\\admfiles\dips\KIDS\Maler\Asciidoc\fonts
set imagesdir=\\admfiles\dips\KIDS\Maler\Asciidoc\images
set themesdir=\\admfiles\dips\KIDS\Maler\Asciidoc\styles
set stylecssrc=\\admfiles\dips\KIDS\Maler\Asciidoc\styles\dips.css
set coderaysrc=\\admfiles\dips\KIDS\Maler\Asciidoc\styles\coderay-asciidoctor.css
set stylecss=dips.css
set configdir=\\admfiles\DIPS\KIDS\Maler\Asciidoc
set contentdir=\\admfiles\DIPS\KIDS\Maler\Asciidoc\content

set stylesrc=\\admfiles\DIPS\KIDS\Maler\Asciidoc\styles
set themesname=dips-pdf-styling
set fasrc=\\admfiles\dips\kids\Maler\Asciidoc\font-awesome-4.4.0\

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
