@echo off

set docname=AdmissionJournal
set outdoc=AdmissionJournal.1.0.0-SNAPSHOT
if not defined docname (set docname=index)
if not defined outdoc (set outdoc=%docname%)
set adoc=%docname%.adoc
set fontdir=fonts
set themesdir=styles
set stylecssrc=styles\dips.css
set coderaysrc=styles\coderay-asciidoctor.css
set stylecss=dips.css


set themesname=dips-pdf-styling



echo Genererer xhtml5 fra asciidoc filen %adoc%
call asciidoctor -D . -a stylesheet=%stylecss% -a linkcss -b xhtml5 %adoc% -o %outdoc%.html

echo Genererer PDF fra asciidoc filen %adoc%
call asciidoctor-pdf -D . -a pdf-stylesdir=%themesdir% -a pdf-style=%themesname% -a pdf-fontsdir=%fontdir% %adoc% -o %outdoc%.pdf

